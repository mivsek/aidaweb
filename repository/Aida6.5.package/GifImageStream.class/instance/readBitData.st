decoding
readBitData
	| bits outCodes outCount bitMask initCodeSize code curCode oldCode inCode finChar set |
	pass := 0.
	xpos := 0.
	ypos := 0.
	rowByteSize := width * 8 + 7 // 8.
	remainBitCount := 0.
	bufByte := 0.
	bufStream := ReadStream on: ByteArray new.
	bits := ByteArray new: width * height.
	outCodes := ByteArray new: 1025.
	outCount := 0.
	bitMask := (1 bitShift: bitsPerPixel)
				- 1.
	prefixTable := Array new: 4096.
	suffixTable := Array new: 4096.
	initCodeSize := self next.
	self setParameters: initCodeSize.
	set := Set new: height.
	self progress: set size / height.
	[(code := self readCode) = eoiCode]
		whileFalse: [code = clearCode
				ifTrue: 
					[self setParameters: initCodeSize.
					curCode := oldCode := code := self readCode.
					finChar := curCode bitAnd: bitMask.
					set add: ypos.
					self progress: set size / height.
					self writePixel: finChar to: bits]
				ifFalse: 
					[curCode := inCode := code.
					curCode >= freeCode
						ifTrue: 
							[curCode := oldCode.
							outCodes at: (outCount := outCount + 1) put: finChar].
					[curCode > bitMask]
						whileTrue: 
							[outCount > 1024 ifTrue: [^self error: 'corrupt GIF file (OutCount)'].
							outCodes at: (outCount := outCount + 1) put: (suffixTable at: curCode + 1).
							curCode := prefixTable at: curCode + 1].
					finChar := curCode bitAnd: bitMask.
					outCodes at: (outCount := outCount + 1) put: finChar.
					outCount
						to: 1
						by: -1
						do: 
							[:i | 
							set add: ypos.
							self progress: set size / height.
							self writePixel: (outCodes at: i)
								to: bits].
					outCount := 0.
					prefixTable at: freeCode + 1 put: oldCode.
					suffixTable at: freeCode + 1 put: finChar.
					oldCode := inCode.
					freeCode := freeCode + 1.
					self checkCodeSize]].
	prefixTable := suffixTable := nil.
	^bits
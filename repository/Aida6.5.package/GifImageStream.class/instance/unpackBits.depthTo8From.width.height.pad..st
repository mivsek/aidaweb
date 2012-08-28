private
unpackBits: bits depthTo8From: depth width: xSize height: ySize pad: pad 
	| bitMask pixelInByte bitsWidth upBitsWidth stopWidth trailingSize upBits |
	(#(1 2 4) includes: depth)
		ifFalse: [^self error: 'depth must be 1, 2, or 4'].
	(#(8 16 32) includes: pad)
		ifFalse: [^self error: 'pad must be 8, 16, or 32'].
	bitMask := (1 bitShift: depth)
				- 1.
	pixelInByte := 8 / depth.
	bitsWidth := xSize * depth + pad - 1 // pad * (pad / 8).
	upBitsWidth := xSize * 8 + pad - 1 // pad * (pad / 8).
	stopWidth := xSize * depth + 7 // 8.
	trailingSize := xSize - (stopWidth - 1 * pixelInByte).
	upBits := ByteArray new: upBitsWidth * ySize.
	1 to: ySize
		do: 
			[:i | 
			| bitIndex upBitIndex val |
			bitIndex := i - 1 * bitsWidth.
			upBitIndex := i - 1 * upBitsWidth.
			1 to: stopWidth - 1
				do: 
					[:j | 
					val := bits at: (bitIndex := bitIndex + 1).
					upBitIndex := upBitIndex + pixelInByte.
					1 to: pixelInByte
						do: 
							[:k | 
							upBits at: upBitIndex - k + 1 put: (val bitAnd: bitMask).
							val := val bitShift: depth negated]].
			val := (bits at: (bitIndex := bitIndex + 1))
						bitShift: depth negated * (pixelInByte - trailingSize).
			upBitIndex := upBitIndex + trailingSize.
			1 to: trailingSize
				do: 
					[:k | 
					upBits at: upBitIndex - k + 1 put: (val bitAnd: bitMask).
					val := val bitShift: depth negated]].
	^upBits
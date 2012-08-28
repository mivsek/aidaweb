bits access
nextBits
	| integer readBitCount shiftCount |
	integer := 0.
	remainBitCount = 0
		ifTrue: 
			[readBitCount := 8.
			shiftCount := 0]
		ifFalse: 
			[readBitCount := remainBitCount.
			shiftCount := remainBitCount - 8].
	[readBitCount < codeSize]
		whileTrue: 
			[self peekByte isNil ifTrue: [^eoiCode].
			integer := integer + (self nextByte bitShift: shiftCount).
			shiftCount := shiftCount + 8.
			readBitCount := readBitCount + 8].
	self peekByte isNil ifTrue: [^eoiCode].
	(remainBitCount := readBitCount - codeSize) = 0
		ifTrue: [integer := integer + (self nextByte bitShift: shiftCount)]
		ifFalse: [integer := integer + (self peekByte bitShift: shiftCount)].
	^integer bitAnd: maxCode
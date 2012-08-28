encoding
writeDepth8Palette
	| size palette array |
	size := 1 bitShift: biBitCount.
	palette := imageObject palette.
	palette size = size ifFalse: [self errorCanNotWrite].
	array := self rgbIntegerArrayFor: palette.
	array
		do: 
			[:rgb | 
			self nextPut: (rgb bitAnd: 255).
			self nextPut: ((rgb bitShift: -8)
					bitAnd: 255).
			self nextPut: ((rgb bitShift: -16)
					bitAnd: 255).
			self nextPut: 0].
	^imageObject palette
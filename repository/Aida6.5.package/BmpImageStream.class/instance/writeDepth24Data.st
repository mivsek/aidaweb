encoding
writeDepth24Data
	| total progress count index color rgb |
	self position = bfOffBits ifFalse: [^self errorCanNotWrite].
	total := biWidth * biHeight.
	progress := 0.
	self progress: progress / total.
	biHeight - 1
		to: 0
		by: -1
		do: 
			[:y | 
			count := 0.
			0 to: biWidth - 1
				do: 
					[:x | 
					index := imageObject atX: x y: y.
					color := imageObject palette at: index.
					rgb := self rgbIntegerFrom: color.
					self nextPut: (rgb bitAnd: 255).
					self nextPut: ((rgb bitShift: -8)
							bitAnd: 255).
					self nextPut: ((rgb bitShift: -16)
							bitAnd: 255).
					count := count + 3.
					progress := progress + 1.
					self progress: progress / total].
			[count \\ 4 = 0]
				whileFalse: 
					[self nextPut: 0.
					count := count + 1]].
	^imageObject
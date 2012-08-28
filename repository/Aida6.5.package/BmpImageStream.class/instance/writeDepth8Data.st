encoding
writeDepth8Data
	| count index |
	self position = bfOffBits ifFalse: [^self errorCanNotWrite].
"
	total := biWidth * biHeight.
	progress := 0.
	self progress: progress / total. 
"
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
					self nextPut: index.
					count := count + 1.
"					progress := progress + 1.
					self progress: progress / total
"
					].
			[count \\ 4 = 0]
				whileFalse: 
					[self nextPut: 0.
					count := count + 1]].
	^imageObject
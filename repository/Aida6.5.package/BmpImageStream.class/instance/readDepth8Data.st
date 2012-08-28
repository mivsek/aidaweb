decoding
readDepth8Data
	| image total progress count index |
	self position: bfOffBits.
	image := Image
				extent: biWidth @ biHeight
				depth: biBitCount
				palette: imagePalette.
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
					index := self next.
					image
						atX: x
						y: y
						put: index.
					count := count + 1.
					progress := progress + 1.
					self progress: progress / total].
			[count \\ 4 = 0]
				whileFalse: 
					[self next.
					count := count + 1]].
	^image
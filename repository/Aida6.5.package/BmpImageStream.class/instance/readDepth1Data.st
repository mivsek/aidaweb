decoding
readDepth1Data
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
			count := 128.
			0 to: biWidth - 1
				do: 
					[:x | 
					count = 128 ifTrue: [index := self next].
					image
						atX: x
						y: y
						put: (index bitAnd: count).
					count := count / 2.
					count < 1 ifTrue: [count := 128].
					progress := progress + 1.
					self progress: progress / total]].
	^image
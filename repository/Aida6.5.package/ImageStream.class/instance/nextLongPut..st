stream access
nextLongPut: a32BitW 
	imageStream nextPut: ((a32BitW bitShift: -24)
			bitAnd: 255).
	imageStream nextPut: ((a32BitW bitShift: -16)
			bitAnd: 255).
	imageStream nextPut: ((a32BitW bitShift: -8)
			bitAnd: 255).
	imageStream nextPut: (a32BitW bitAnd: 255).
	^a32BitW
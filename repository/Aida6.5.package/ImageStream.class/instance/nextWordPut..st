stream access
nextWordPut: a16BitW 
	imageStream nextPut: ((a16BitW bitShift: -8)
			bitAnd: 255).
	imageStream nextPut: (a16BitW bitAnd: 255).
	^a16BitW
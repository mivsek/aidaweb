stream access
nextLSBWordPut: a16BitW 
	self nextPut: (a16BitW bitAnd: 255).
	self nextPut: ((a16BitW bitShift: -8)
			bitAnd: 255)
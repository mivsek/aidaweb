stream access
nextLSBLongPut: a32BitW 
	self nextPut: (a32BitW bitAnd: 255).
	self nextPut: ((a32BitW bitShift: -8)
			bitAnd: 255).
	self nextPut: ((a32BitW bitShift: -16)
			bitAnd: 255).
	self nextPut: ((a32BitW bitShift: -24)
			bitAnd: 255)
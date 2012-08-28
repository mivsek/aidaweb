stream access
nextLSBLong
	^self next + (self next bitShift: 8) + (self next bitShift: 16) + (self next bitShift: 24)
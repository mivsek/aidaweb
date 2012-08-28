stream access
nextLSBWord
	^self next + (self next bitShift: 8)
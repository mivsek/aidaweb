accessing
addresses
	addresses isNil ifTrue: [self initAddresses].
	^addresses
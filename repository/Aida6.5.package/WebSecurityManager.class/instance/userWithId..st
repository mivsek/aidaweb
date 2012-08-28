user management
userWithId: aNumber
	^self users detect: [:each | each id = aNumber] ifNone: [nil]
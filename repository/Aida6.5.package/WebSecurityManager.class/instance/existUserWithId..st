user management
existUserWithId: aNumber
	^self users contains: [:each | each id = aNumber].
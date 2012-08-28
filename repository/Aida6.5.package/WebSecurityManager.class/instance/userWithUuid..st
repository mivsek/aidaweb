user management
userWithUuid: aString
	" find and return a WebUser with specified uuid. Return nil if not found" 
	^self users detect: [:each | each uuid = aString] ifNone: [nil]
validation
isUniqueUsername: aString
	^(self site securityManager userNamed: aString) isNil
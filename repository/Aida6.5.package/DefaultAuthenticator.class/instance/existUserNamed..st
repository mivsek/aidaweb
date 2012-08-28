authenticating
existUserNamed: anUsernameString
	^(self site securityManager userNamed: anUsernameString)
		notNil.
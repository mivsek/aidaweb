authenticating
authenticateUserNamed: anUsernameString withPassword: aPasswordString
	^(self site securityManager userNamed: anUsernameString withPassword: aPasswordString)
		notNil.
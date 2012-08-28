user management
existUserNamed: anUsernameString withPassword: aPasswordString
	^(self userNamed: anUsernameString withPassword: aPasswordString) notNil
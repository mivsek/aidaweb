user management
userNamed: anUsernameString withPassword: aPasswordString
	" find and return a WebUser with username and password. Return nil if not found"
 	(anUsernameString isNil  | aPasswordString isNil) ifTrue: [^nil].
 	((anUsernameString = '') | (aPasswordString = '')) ifTrue: [^nil].
	^self users detect: [:user | 
		(user username asLowercase = anUsernameString asLowercase) and: 
			[user password = (WebSecurityManager hashPassword: aPasswordString)]] 
				ifNone: [nil]

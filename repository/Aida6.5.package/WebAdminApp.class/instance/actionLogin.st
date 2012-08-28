actions
actionLogin
	| user |
	(self site securityManager isAllowedToLoginIP: self session lastRequest peer) ifFalse:
		[self reportLoginWarning: 'not allowed from this IP'.
		self site securityManager ipFilterPolicy = #deny 
			ifTrue: [self session logout. ^self] ]. "don't allow to login from this IP"
	[self site authenticator startAuthentication.
	(self site authenticator existUserNamed: self username) ifFalse: 
		[self delay; reportLoginError: 'This user does not exist!' "see #viewLogin inError...". self session logout. ^self].
	(self site authenticator authenticateUserNamed: self username withPassword: self password) ifFalse: 
		[self delay; reportLoginError: 'Password wrong!'  "see #viewLogin inError...". self session logout. ^self].
	user := self site authenticator userNamed: self username.
	] ensure: [self site authenticator endAuthentication].

	self session loginUser: user. 
	self reportLogin. 	self password: ''.

	(self site afterLogin = #myPage and: [self site autoLogout not])
		ifTrue: [^self redirectTo: self user asPerson].
	self site afterLogin = #lastPage ifFalse: [^self redirectTo: self site afterLogin]. 
	(user logoutFromUrl notNil and: [self site urlResolver existUrl: user logoutFromUrl])
		ifTrue: [self redirectTo: user logoutFromUrl] "back from where we were logout"
		ifFalse: [self redirectTo: '/']
"		ifFalse: [self redirectTo: (user asPerson notNil ifTrue: [user asPerson] ifFalse: ['/']) ] "
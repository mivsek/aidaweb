views
viewLogout
	self session isLoggedIn ifTrue: 
		[self reportLogout.
		self session logout.
		self username: ''. self password: ''].
	self site securityManager hasFormAuthenticationScheme ifTrue: [^self redirectToView: #login].
	self site securityManager hasHttpAuthenticationScheme ifTrue: [^self redirectTo: '/'].
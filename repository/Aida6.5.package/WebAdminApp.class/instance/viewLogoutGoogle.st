views-federated login
viewLogoutGoogle
	self session isLoggedIn ifTrue: 
		[self reportLogout.
		self session logout.
		self username: ''. self password: ''].
	^self redirectToView: #loginGoogle.
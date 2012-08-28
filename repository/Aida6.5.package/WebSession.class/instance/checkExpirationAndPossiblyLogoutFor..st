security-login
checkExpirationAndPossiblyLogoutFor: aRequest
	"don't logout if request is POST on the same object (eg. after long editing)"
	self isLoggedIn ifFalse: [^self].
	(self site autoLogout or: [self user autoLogout]) ifFalse: [^self].
	(self isExpired and: [aRequest isPost not]) ifTrue: 
		[self logout.
		(self site admin aidaWebAppFor: self) 
			showError: self site style sessionTimeoutText].
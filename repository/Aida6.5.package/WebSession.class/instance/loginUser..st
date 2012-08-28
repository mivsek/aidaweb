security-login
loginUser: aWebUser
"	(self site securityManager isAllowedToLoginIP: self lastRequest peer) 
		ifFalse: [^self error: 'From this IP not allowed to login!'].
"	self user: aWebUser.
	self logLoginOf: aWebUser.
	aWebUser inAdminGroup ifTrue: [aWebUser escalateToAdmin]. "temporary, otherwise rather unescalate!"
	aWebUser logLogin.
actions-federated reg.
actionMainGoogle
	self context form isValid ifFalse: 
		[self showError: self context form collectErrorTexts. 
		^self redirectToView: #mainGoogle].
	self site securityManager addActivatingUser: self newUser.
	self redirectToView: #activateGoogle.
actions
actionMain
	self context form isValid ifFalse: 
		[self showError: self context form collectErrorTexts. 
		^self redirectToView: #main].
	self site securityManager addActivatingUser: self newUser.
	self sendActivationRequest.
	self redirectToView: #activationRequest.
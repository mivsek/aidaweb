actions
actionRegistration
	self isRegistrationValid 
		ifTrue: 
			[self site securityManager addActivatingUser: self newUser.
			self newView: #waitingConfirmation]
		ifFalse: ["just reload registration form again"]
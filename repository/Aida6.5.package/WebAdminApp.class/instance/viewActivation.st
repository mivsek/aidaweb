views
viewActivation
	| e id user |
	(self session lastRequest includesQuery: 'userid') ifTrue:
		[id := (self session lastRequest queryAt: 'userid') asInteger.
		(self site securityManager existUserWithId: id) ifTrue:
			[user := self site securityManager userWithId: id.
			 self site securityManager addRegisteredUser: user.
			self session loginUser: user.
			self title: 'Activation successfull!'.
			e := WebElement new.
			e addTextH1: 'Activation successfull!'.
			e addText: 'Congratulations! You are now a registered user of our portal. You are 
			already logged in and your name is shown on the page'. 
 			^self style pageFrameWith: e title: self title] ].

	self title: 'Activation failed!'.
	e := WebElement new.
	e addTextH1: 'Activation failed!'.
	e addText: ' You tried to activate an user account but activation failed. Please send an email to '. 
	e addLinkTo: 'info@eranova.si' text: 'Portal Administrator'.
 	^self style pageFrameWith: e title: self title .
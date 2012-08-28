layout
headerLogin
	| e |
	e := WebElement new.
	e addNbSp: 3; addGif: #keyGif.
	self app user isGuest
		ifTrue: [e addTextBold: ' ', self guestUserText]
		ifFalse: [e add: self headerUserElement].
	self app user isGuest 
		ifTrue: 
			[e addText: ' | '; addLinkTo: self site admin text: self loginText view: 'login'.
			self site registrationAllowed ifTrue:
				[e addText: ' | '; addLinkTo: self site registration text: self registerText] ]
		ifFalse: 
			[e addText: ' | '; addLinkTo: self app user text: self profileText.
			e addText: ' | '; addLinkTo: self site admin text: self logoutText view: 'logout'].
	^e
printing
viewAclObjects
	| e |
	(self session lastRequest includesQuery: 'who') ifFalse: [^self redirectToView: #main].
	self setAclForWhoFromRequest.
	self aclForWho isNil ifTrue: [^self redirectToView: #main].
	self title: 'Access Rigths'.
	e := WebElement new.
	e addTextH1: self title.
	e add: self aclForWhoElement.
	self style pageFrameWith: e title: self title
views
viewSessions
	| e |
	self canBeViewed ifFalse: [^self redirectTo: self site admin view: #login].
	self title: 'Sessions for ', self observee nameSurname.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title;
		addText: self style profileIntroMessage;
		add: self sessionsElement.
	self style pageFrameWith: e title: self title
views
viewMain
	| e |
	self canBeViewed ifFalse: [^self redirectTo: self site admin view: #login].
	self title: 'Profile for ', self observee nameSurname.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title;
		addText: self style profileIntroMessage;
		add: self basicInfoElement;
		add: self contactInfoElement;
		add: self groupsAndActivityElement;
		add: self actionsLineElement.
	self style pageFrameWith: e title: self title
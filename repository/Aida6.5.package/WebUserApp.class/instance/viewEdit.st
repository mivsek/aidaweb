views
viewEdit
	| e |
	self canBeViewed ifFalse: [^self redirectTo: self site admin view: #login].
	self title: 'Edit user ', self observee nameSurname.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title;
		addBreak;
		addErrorReport;
		add: self editElement.
	self style pageFrameWith: e title: self title
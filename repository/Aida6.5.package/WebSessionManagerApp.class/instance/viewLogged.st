views
viewLogged
	| e |
	self title: #en->'Sessions, logged-in now or in past'.
	e := WebElement new.
	e add: self hierarchyLinksElement.
	e addTextH1: self title. e addBreak.
	e add: self tabsElement. e addBreak.
	e add: self loggedSessionsElement.
	self style pageFrameWith: e title: self title
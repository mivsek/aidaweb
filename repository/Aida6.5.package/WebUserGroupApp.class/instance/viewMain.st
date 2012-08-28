views
viewMain
	| e  |
	self title: 'Group ', self observee name.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title; addBreak.
	e add: self adminElement. e addBreak.
	e add: self usersGridElement.
	self style pageFrameWith: e title: self title
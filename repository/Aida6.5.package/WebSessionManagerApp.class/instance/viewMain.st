views
viewMain
	| e |
	self title: #en->'Active sessions'.
	e := WebElement new.
	e add: self hierarchyLinksElement.
	e addTextH1: self title. e addBreak.
	e add: self tabsElement. e addBreak.
	e add: self activeSessionsElement.
	self style pageFrameWith: e title: self title
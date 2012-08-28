printing
viewUsers
	| e |
	self title: #en->'Users'.
	e := WebElement new.
	e add: self hierarchyLinksElement.
	e addTextH1: self title. e addBreak.
	e add: self tabsElement; addBreak.
	e addLinkTo: self observee text: #en->' Add user ' view: #addUser;
		addLinkTo: self observee text: #en->' Remove users ' view: #removeUsers.
	e add: self usersGridElement.
	self style pageFrameWith: e title: self title
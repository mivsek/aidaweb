printing
viewAddGroup
	| e |
	self group: WebUserGroup new.
	self title: 'Adding a new group on site: ', self site name.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title;
		addText: 'New group name: ';
		add: (WebInputField new aspect: #name for: self group);
		addBreak;
		addButtonText: 'Add'.
	self style pageFrameWith: e title: self title
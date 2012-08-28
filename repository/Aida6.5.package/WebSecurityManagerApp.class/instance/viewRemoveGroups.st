printing
viewRemoveGroups
	| e |
	self title: 'Removing groups'.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title.
	e addText: 'Note: groups are immediatelly removed after they are checked! Until you are on this page, groups can be un-removed by uncheck the checkbox.'.
	e add: self groupsRemovalElement.
	self style pageFrameWith: e title: self title
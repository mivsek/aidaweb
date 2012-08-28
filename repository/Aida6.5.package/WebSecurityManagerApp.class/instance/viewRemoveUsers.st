printing
viewRemoveUsers
	| e |
	self title: 'Removing users'.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title.
	e addText: 'Note: members are immediatelly removed after they are checked! Until you are on this page, users can be un-removed by uncheck the checkbox.'.
	e add: self usersRemovalElement.
	self style pageFrameWith: e title: self title
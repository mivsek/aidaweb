views
viewSelectUsers
	| e  |
	self title: 'Select members of group ', self observee name.
	e := WebElement new.
	e add: self hierarchyLinksElement; addBreak.
	e addTextH1: self title; addBreak.
	e add: self errorReport. "if any"
	e addText: 'Note: members are immediatelly added or removed from group after they are checked/unchecked!'.
	e add: self userSelectionElement.
	self style pageFrameWith: e title: self title
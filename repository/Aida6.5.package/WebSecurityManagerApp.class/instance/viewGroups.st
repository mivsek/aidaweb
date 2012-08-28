printing
viewGroups
	| e |
	self title: #en->'Groups of users'.
	e := WebElement new.
	e add: self hierarchyLinksElement.
	e addTextH1: self title. e addBreak.
	e add: self tabsElement; addBreak.
	e addLinkTo: self observee text: #en->' Add group ' view: #addGroup;
		addLinkTo: self observee text: #en->' Remove groups ' view: #removeGroups.
	e add: self groupsGridElement.
	self style pageFrameWith: e title: self title
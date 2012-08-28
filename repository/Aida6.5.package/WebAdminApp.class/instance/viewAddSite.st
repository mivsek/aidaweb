views
viewAddSite
	| e |
	self	title: 'Web sites'.
	e := WebElement new.
	e addTextH1: 'Adding a new web site'. e addBreak. 
	e add: self addSiteElement.
	^self style pageFrameWith: e title: self title .
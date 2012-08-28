views
viewSites
	| e |
	self	title: 'Websites on this Aida/Web server'.
	e := WebElement new.
	e addTextH1: self title. e addBreak. 
	e add: self tabsSettingsElement. e addBreak.
	e addButtonText: 'Add new web site'. e addBreak.
	e add: self sitesElement.
	^self style pageFrameWith: e title: self title .
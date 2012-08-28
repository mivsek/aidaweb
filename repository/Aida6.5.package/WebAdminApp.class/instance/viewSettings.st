views
viewSettings
	| e |
	self	title: 'Settings for site: ', self site name.
	e := WebElement new.
	e addTextH1: self title. e addBreak. 
	e add: self tabsSettingsElement. e addBreak.
	e add: self settingsElement.
	^self style pageFrameWith: e title: self title .
views-elements
pageDescription
	| e url |
	e := WebElement new.
	url := self site urlResolver halfUrlFor: self domainObject.
	e addText: 'For page: '; addLinkTo: url text: url.
	^e
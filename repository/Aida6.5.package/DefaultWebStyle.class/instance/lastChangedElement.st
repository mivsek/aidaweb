layout
lastChangedElement
	| e url |
	e := WebElement newId: #sitePageChanged. e table width: 1.
	e cell align: #center; addRulerSize: 1; addBreak.
	e cell addText: self lastChangedText.
	self observee modifiedTimestamp notNil ifTrue: 
		[e cell addTextBold: self app observee modifiedTimestamp asDate shortPrintSloString].
	self app user hasAdminRights ifTrue: 
		[url := self site urlResolver halfUrlFor: self app observee.
		e cell addLinkTo: self site statistics 
			text: ' visits: <b>', self app visitsCount printDotString, '</b>'
			parameter: 'url' value: url].
	^e
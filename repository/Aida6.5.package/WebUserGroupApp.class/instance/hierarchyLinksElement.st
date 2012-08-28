views-elements
hierarchyLinksElement
	| e |
	e := WebElement new.
	e addText: self site name, ' / '.
	e addLinkTo: self site securityManager text: 'Security'.
	e addText: ' / '.
	e addLinkTo: self site securityManager text: 'Groups' view: #groups.
	e addText: ' / '.
	e addLinkTo: self observee text: '<b>', self observee name, '</b>'.
	^e
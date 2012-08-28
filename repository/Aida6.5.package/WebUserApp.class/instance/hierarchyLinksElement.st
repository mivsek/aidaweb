views-elements
hierarchyLinksElement
	| e |
	e := WebElement new.
	e addText: self site name, ' / '.
	e addLinkTo: self site securityManager text: 'Security'.
	e addText: ' / '.
	e addLinkTo: self site securityManager text: 'Users' view: #users.
	e addText: ' / '.
	e addLinkTo: self observee text: '<b>', self observee nameSurname, '</b>' view: self view.
	^e
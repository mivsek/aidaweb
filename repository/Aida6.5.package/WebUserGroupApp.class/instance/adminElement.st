views-elements
adminElement
	| e |
	e := WebElement new.
	e addLinkTo: self observee text: ' Select users ' view: #selectUsers;
		add: ((WebLink text: ' Access rights ' linkTo: self site securityManager)
			view: #aclObjects;
			parameter: 'who' value: self observee uuid).
	^e
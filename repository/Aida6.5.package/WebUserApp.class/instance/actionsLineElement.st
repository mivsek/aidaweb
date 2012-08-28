views-elements
actionsLineElement
	| e |
	e := WebElement new.
	self observee isGuest not
		ifTrue: [e addLinkTo: self observee text: 'Update information ' view: #edit]
		ifFalse: [e addText: 'User locked, changes not allowed '].
	e addLinkTo: self site securityManager text: ' Access rights '
		view: #aclObjects
		parameter: 'who' value: self observee uuid.
	^e
views
build
	| field |
	self addTextSmall: 'Widget created: ', Time now printString. self addBreak.
	self addText: 'Password check'. 
	self cell valign: #top; addText: 'Username: '.
	field := (self newCell addInputFieldAspect: #username for: self)
		onChangePost;
		validIfTrue: [:value | self site securityManager existUserNamed: value];
		errorText: 'This username does not exist!'.
	self cell addBreak; add: field errorElement. 
	self newRow. self cell addText: 'Password: '.
	self newCell addInputFieldAspect: #password for: self.
	self newRow.
	(self addButtonText: 'Check')
		onSubmitDo: [self checkAndSetResult. self update];
		onSubmitClose.  "just for popups, ignored elsewhere"
	(self addSpace; addNilLinkText: 'Refresh time')
		onClickDo: [self update].
	self addSpace; addTextBold: self result
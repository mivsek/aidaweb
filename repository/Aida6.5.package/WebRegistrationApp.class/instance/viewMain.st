views
viewMain
	| e field |
	self site registrationAllowed ifFalse: [^self registrationNotAllowed].
	self session isLoggedIn ifTrue: [^self alreadyLoggedIn].
	e := WebElement new.
	self title: 'Registration form, step 1/', self nrOfSteps printString.
	e cell colspan: 3; addTextH1: self title. e newRow.
	self style registrationIntroductionMessage notEmpty ifTrue:
		[e cell colspan: 3; addText: self style registrationIntroductionMessage. e newRow.
		e cell colspan: 3; addRuler. e newRow].
	self inError ifTrue: [e cell colspan:3; add: self errorReport. e newRow].
	e cell addText: 'First name: '.
	field := e newCell addInputFieldAspect: #name for: self newUser. e newRow.
	field 
		validIfTrue: [:value | value trimBlanks notEmpty];
		errorText: 'First name is needed'.
	e cell addText: 'Second name: '.
	field := e newCell addInputFieldAspect: #surname for: self newUser. e newRow.
	field 
		validIfTrue: [:value | value trimBlanks notEmpty];
		errorText: 'Second name is needed'.
	e cell addText: 'Country: '.
	e newCell addInputFieldAspect: #country for: self newUser. e newRow.
	e cell addText: 'Valid email: '.
	field := e newCell addInputFieldAspect: #email for: self newUser.
	field
		validIfTrue: [:value | self isValidEMail: value];
		errorText: 'Email not valid!'.
	e newRow.
	e cell colspan: 3; addRuler. e newRow.
	e cell addText: 'Username: '.
	field := e newCell addInputFieldAspect: #username for: self newUser. e newRow.
	field
		validIfTrue: [:value | self isUniqueUsername: value];
		errorText: 'User with that username already exist!'.
	e cell addText: 'Password: '.
	(e newCell addPasswordFieldAspect: #password for: self newUser) onChangePost. e newRow.
	e cell addText: 'Confirm password: '.
	field := e newCell addPasswordFieldAspect: #password for: self.
	field
		validIfTrue: [:value | self isSamePassword: value];
		errorText: 'Passwords not equal!'.
	e newRow.
	e cell colspan: 3; addRuler. e newRow.
	e cell addButtonText: 'Next'.
	e cell colspan: 3; addRuler.
	self style pageFrameWith: e title: self title
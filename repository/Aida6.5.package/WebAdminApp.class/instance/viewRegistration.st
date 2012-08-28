views
viewRegistration
	| e f |
	self inError ifFalse: [self newUser: self site webUserClass new. self password: ''].
	self title: 'Registration Form'.
	e := WebElement new.
	e addTextH1: 'Registration Form'.
	e addErrorReport.
	f := WebFieldSet newLegend: 'Personal details'.
	f cell addText: 'Name: '. f newCell addInputFieldAspect: #name for: self newUser. f newRow.
	f cell addText: 'Surname: '. f newCell addInputFieldAspect: #surname for: self newUser. f newRow.
	f cell addText: 'E-mail: '. f newCell addInputFieldAspect: #email for: self newUser. f newRow.
	f cell addText: 'Username: '. f newCell addInputFieldAspect: #username for: self newUser.
	f newRow.
	f cell addText: 'Password: '. f newCell addPasswordFieldAspect: #password for: self. f newRow.
	f cell addText: 'Confirm Password: '. f newCell addPasswordFieldAspect: #password for: self newUser.
	f newRow. f newCell addButtonText: 'Register'. 
	e add: f.
 	^self style pageFrameWith: e title: self title .
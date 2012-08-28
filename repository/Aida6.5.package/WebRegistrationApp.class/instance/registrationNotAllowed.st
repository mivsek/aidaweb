views
registrationNotAllowed
	| e |
	e := WebElement new.
	self title: 'Registration form, step 1/', self nrOfSteps printString.
	e cell addTextH1: self title. e newRow.
	e cell addText: 'Registration is currently not allowed on this site!'.
	self style pageFrameWith: e title: self title
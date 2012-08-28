views
alreadyLoggedIn
	| e |
	e := WebElement new.
	self title: 'Registration form, step 1/', self nrOfSteps printString.
	e cell addTextH1: self title. e newRow.
	e cell addText: 'You are already registered and logged in!'.
	self style pageFrameWith: e title: self title
views
viewActivationRequest
	| e |
	e := WebElement new.
	self title: 'Activation request, step 2/', self nrOfSteps printString.
	e cell addTextH1: self title. e newRow.
	e cell addText: self style registrationActivationRequestMessage.
	self style pageFrameWith: e title: self title.
	self initNewUser
views
viewActivate
	| e |
	e := WebElement new.
	self title: 'Activation confirmation, step 3/', self nrOfSteps printString.
	e cell addTextH1: self title. e newRow.
	self checkActivateAndLoginFromRequest
		ifFalse: [e cell addText: 'Activation unsuccesfull! Did you already activate your account?']
		ifTrue: 
			[e cell addText: self style registrationActivatedMessage. e newRow.
			e cell addRuler. e newRow.
"			e cell addButtonText: 'Next'.  "
			e cell addButtonText: 'I''m a Student' action: #student. e cell addSpace. "GSoC"
			e cell addButtonText: 'I''m a Mentor' action: #mentor. e cell addSpace.
			e cell addRuler. e newRow].
	self style pageFrameWith: e title: self title
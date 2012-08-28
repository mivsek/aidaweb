views-federated reg.
viewActivateGoogle
	| e |
	e := WebElement new.
	self title: 'Registereing as Student or Mentor?, step 2/2'.
	e cell addTextH1: self title. e newRow.
	self checkActivateAndLoginFederated
		ifFalse: [e cell addText: 'Activation unsuccesfull! Did you already activate your account?']
		ifTrue: 
			[e cell addText: self style registrationActivatedMessage. e newRow.
			e cell addRuler. e newRow.
"			e cell addButtonText: 'Next'.  "
			e cell addButtonText: 'I''m a Student' action: #student. e cell addSpace. "GSoC"
			e cell addButtonText: 'I''m a Mentor' action: #mentor. e cell addSpace.
			e cell addRuler. e newRow].
	self style pageFrameWith: e title: self title
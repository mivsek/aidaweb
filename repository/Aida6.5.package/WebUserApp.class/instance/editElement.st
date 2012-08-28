views-elements
editElement
	| e |
	self newPassword: ''.
	self newPasswordConfirmation:  ''.
	e := WebElement new.
	self observee isLocked 
		ifTrue: [e cell addTextBold: 'User is locked!'. e newRow]
		ifFalse:
			[e cell addText: 'Name:'.
			e newCell addInputFieldAspect: #name for: self observee. e newRow.
			e cell addText: 'Surname:'. 
			e newCell addInputFieldAspect: #surname for: self observee. e newRow.
			e cell addText: 'Company:'.
			e newCell addInputFieldAspect: #company for: self observee. e newRow.
			e cell addText: 'Address:'.
			e newCell addInputFieldAspect: #address for: self observee. e newRow.
			e cell addText: 'City:'.
			e newCell addInputFieldAspect: #city for: self observee. e newRow.
			e cell addText: 'Zip:'.
			e newCell addInputFieldAspect: #zip for: self observee. e newRow.
			e cell addText: 'Phone:'.
			e newCell addInputFieldAspect: #phone for: self observee. e newRow.
			e cell addText: 'Fax:'.
			e newCell addInputFieldAspect: #fax for: self observee. e newRow.
			e cell addText: 'E-mail:'.
			e newCell addInputFieldAspect: #email for: self observee. e newRow.
			e cell addText: 'Website:'.
			e newCell addInputFieldAspect: #website for: self observee. e newRow; newRow.
			e cell addText: 'Username:'.
			e newCell addInputFieldAspect: #username for: self observee. e newRow].
	e cell addText: ' New password:'.
	e newCell addPasswordFieldAspect: #newPassword for: self.
	e newRow.
	e cell addText: 'Confirm password:'.
	e newCell addPasswordFieldAspect: #newPasswordConfirmation for: self.
	e newRow.
	e cell addButtonText: 'Save'.
	^e
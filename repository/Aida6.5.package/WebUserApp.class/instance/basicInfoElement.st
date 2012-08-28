views-elements
basicInfoElement
	| e |
	e := WebFieldSet new legend: 'Basic information'.
	e cell addText: 'Username:'.
	e newCell addTextBold: self observee username.
	e newRow.
	e cell addText: 'Name:'.
	e newCell addTextBold: self observee name.
	e newRow.
	e cell addText: 'Surname:'.
	e newCell addTextBold: self observee surname.
	^e
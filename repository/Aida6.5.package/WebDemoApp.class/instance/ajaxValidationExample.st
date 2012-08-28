views-ajax
ajaxValidationExample
	| e field |
	e := WebElement new. e table width: 220.
	e cell colspan:2; addTextH4: 'Instant validation example'. e newRow.
	e cell width: 160; addText: 'Today''s year is: '.
	field := e cell addInputFieldAspect: #year for: self size: 4.
	field 
		onChangePost;
		validIfTrue: [:value | value isEmpty"temporary!" or: [value asInteger = Date today year]];
		errorText: 'Wrong!'.
	e newCell add: field errorElement. "this element will show error text in red near input field, if year is wrong"
	^e
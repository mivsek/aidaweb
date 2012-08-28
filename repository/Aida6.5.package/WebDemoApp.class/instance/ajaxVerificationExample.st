views-ajax
ajaxVerificationExample
	| e field |
	e := WebElement new.
	e addTextH4: 'Example: instant verification example'.
	e addText: 'Today''s year is: '. e addBreak.
	field := e addInputFieldAspect: #year for: self.
	field 
		onChangePost;
		validIfTrue: [:value | value asInteger = Date today year];
		errorText: 'Wrong!'.
	e add: field errorElement. "this element will show error text in red near input field, if year is wrong"
	^e
views-ajax
ajaxSubmitExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Ajax form submit to the server'.
	e addInputFieldAspect: #submitValue for: self observee. e addSpace.
	(e addButtonText: 'Ajax submit' action: #something) "will call also call #actionAjaxSomething"
		onSubmitUpdate: e.
	e addBreak; addTextBold: self observee submitValue.
	^e
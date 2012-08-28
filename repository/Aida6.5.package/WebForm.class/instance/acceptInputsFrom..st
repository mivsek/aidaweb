model posting
acceptInputsFrom: aRequest
	"this method read form inputs (if any) and if all values pass validation, write them to the appropriate 
	aspects of model  objects. If entire form is validated, it saves inputs to model, all at once"
	| field |
	self acceptFormInputFrom: aRequest.  "just fields which are in request, can be only a single one in Ajax!"
	aRequest isAjaxPostWithSingleInput  "form or single field validation"
		ifTrue: 
			[field := self fieldNamed: aRequest ajaxSingleInputName. 
			field isValid ifTrue: [field save] ]
		ifFalse: [self isValid ifTrue: [self save] ].    "check in action methods for validation again!"
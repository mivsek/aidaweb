private-form posting
formPostedFrom: aRequest
	"get a form from which input is posted by this request"
	| elementToUpdate |
	aRequest isAjaxRequest ifFalse: [^aRequest context form].
	aRequest isAjaxPostWithSingleInput ifTrue: 
		[^(aRequest context form fieldNamed: aRequest ajaxSingleInputName) form].
	elementToUpdate := aRequest context elementId: aRequest ajaxElementId.
	elementToUpdate isNil ifTrue: [^aRequest context form]. "always?"
	elementToUpdate isStubElement ifTrue: [^aRequest context form]. 
	^elementToUpdate creationObject isWebWidget
			ifTrue: [elementToUpdate creationObject form]
			ifFalse: [aRequest context form]. "form of currently shown window/page"
private-obsolete
respondToAjaxRequest: aRequest
	| oldElement elementToRecreate e result ctx |
	oldElement := aRequest context elementId: aRequest ajaxElementId. "should be here, its context stil alive"
	elementToRecreate := aRequest context elementId: aRequest ajaxElementToRecreateId.
	aRequest isAjaxInPlaceEditingRequest ifTrue: [^self respondToAjaxInPlaceEditing: aRequest].
	aRequest isAjaxAutocompleteRequest ifTrue: [^self respondToAjaxAutocomplete: aRequest].
	aRequest isAjaxPostWithInput ifTrue: [self acceptInputsAndActionFrom: aRequest].
	aRequest isAjaxCloseWindowRequest ifTrue: [self respondToAjaxCloseWindow: aRequest]. "then continue here!"
	aRequest isAjaxPopupWindowRequest 
		ifTrue: 
			[ctx := aRequest context createNewContext. "is also added to context chain and also to this app"
			ctx event: aRequest.
			aRequest context: ctx. "switch to a new context during th rest of execution"
			e := self ajaxUpdate: oldElement from: elementToRecreate on: aRequest. 
			e := self wrap: e intoPopupWindow: ctx window] "e is now window with wrapped element"
		ifFalse: 
			[e := self ajaxUpdate: oldElement from: elementToRecreate on: aRequest]. 
	e registerFormElements.
	e prepareToHtmlStreamingOn: self session. "to prepare again"
	result := e copy.
	result nilAttributes. "to be just plain element, no div,  to send inner html of original element only"
	aRequest context result: result.
	^result
adding form elements
addPasswordFieldAspect: aSymbol for: anObject
	^self add: (WebInputField new type: #password; aspect:  aSymbol for: anObject)
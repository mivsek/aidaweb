adding form elements
addInputFieldAspect: aSymbol for: anObject
	^self add: (WebInputField new aspect:  aSymbol for: anObject)
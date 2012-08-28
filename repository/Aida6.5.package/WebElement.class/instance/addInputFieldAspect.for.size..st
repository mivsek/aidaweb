adding form elements
addInputFieldAspect: aSymbol for: anObject size: aNumber
	^self add: ((WebInputField new aspect:  aSymbol for: anObject) size: aNumber)
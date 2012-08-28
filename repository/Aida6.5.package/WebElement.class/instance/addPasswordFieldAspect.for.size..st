adding form elements
addPasswordFieldAspect: aSymbol for: anObject size: aNumber
	^self add: ((WebInputField new type: #password; aspect:  aSymbol for: anObject) size: aNumber)
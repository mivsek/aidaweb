adding ajax components
addDateInputFieldAspect: aSymbol for: anObject
	"with popup calendar"
	^self add: (WebDateInputField new aspect:  aSymbol for: anObject)
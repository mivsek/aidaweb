adding form elements
addCheckboxAspect: aSymbol for: anObject
	"aspect method will be called and true/false will be set/clear on an object"
	^self add: (WebCheckBox aspect:  aSymbol for: anObject)
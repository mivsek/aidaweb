adding form elements
addMenuAspect: aSymbol collection: aCollection selectedToAspect: aSymbol2 of: anObject
	"Single selection menu.. Aspect of every element in aColection will be shown in menu. 
	Single selection will be put in an seelcted aspect of object. Here also initial selection can be set"
	^self add: 
		(WebMenu aspect: aSymbol collection: aCollection selectedToAspect: aSymbol2 of: anObject)
adding form elements
addMenuCollection: aCollection selectedToAspect: aSymbol2 of: anObject
	"Single selection menu. Every element (text!) in aColection will be shown in menu. 
	Single selection will be put in an seelcted aspect of object. Here also initial selection can be set"
	^self add: (WebMenu collection: aCollection selectedToAspect: aSymbol2 of: anObject)
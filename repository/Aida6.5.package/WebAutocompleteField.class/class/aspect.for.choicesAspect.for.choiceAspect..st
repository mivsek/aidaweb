instance creation
aspect: aSymbol for: anObject choicesAspect: aChoicesSymbol for: aChoicesObject choiceAspect: aTextSymbol
	"choicesAspect method is called with our field as argument on aChoicesObject. 
	It returs a collection of objects, an choice's text 
	is retrieved with a call of choiceAspect method on each"
	^self new 
		aspect: aSymbol for: anObject;
		choicesAspect: aChoicesSymbol for: aChoicesObject;
		choiceAspect: aTextSymbol
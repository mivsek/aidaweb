instance creation
aspect: aSymbol for: anObject choicesAspect: aChoicesSymbol for: aChoicesObject
	"choicesAspect method is called with our field as argument on aChoicesObject. 
	It must return a collection of strings"
	"example: myObject searchFor: aString (choicesAspect is #searchFor: )"
	^self new 
		aspect: aSymbol for: anObject;
		choicesAspect: aChoicesSymbol for: aChoicesObject
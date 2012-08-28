private
choicesAspect: aSymbol for: anObject
	"this method is called with our field as argument on that object. It must return a collection of strings"
	"example: myObject searchFor: aString (choicesAspect is #searchFor: )"
	self choicesAspect: aSymbol.
	self choicesObject: anObject
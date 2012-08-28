instance creation
newAspect: aSymbol for: anObject
	"this method will be called and true/false will be set/clear on an object"
	^self new aspect: aSymbol for: anObject
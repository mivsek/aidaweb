instance creation
fromMethod: aSymbol on: anObject contentType: aString site: anAIDASite
	"cached one only preservers its url, but method is still called everytime image is shown!"
	| cached | 
	cached := self imageForObject: anObject andMethod: aSymbol.
	^cached notNil 
		ifTrue: [cached] 
		ifFalse: [super new
			object: anObject;
			method: aSymbol;
			aidaContentType: aString;
			site: anAIDASite;
			addToCache]
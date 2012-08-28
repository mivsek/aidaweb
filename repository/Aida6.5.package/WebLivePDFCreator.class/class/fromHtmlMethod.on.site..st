instance creation
fromHtmlMethod: aMethodSymbol on: anObject site: anAIDASite
	"this method should return a complete html page! "
	| docname |
	docname := (anObject class canUnderstand: #preferedUrlName) 
		ifTrue: [anObject preferedUrlName] ifFalse: ['live'].
	^self fromMethod: aMethodSymbol on: anObject 
		contentType: 'application/pdf' preferedUrl: '/generated/', docname, '.pdf' site: anAIDASite
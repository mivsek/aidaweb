private-serving
resourceFor: aRequest
	"router asks if there is any subclass of WebMethodLibrary to handle this request"
	| absUrl relUrl |
	absUrl := aRequest urlString.
	^self allSubclasses 
		detect: [:lib | 
			lib baseUrl notNil and:
				[(lib baseUrl, '*' match: absUrl) and:			
					[relUrl := absUrl copyFrom: lib baseUrl size+1 to: absUrl size.
					lib urlToMethodMap includesKey: relUrl]] ]
		ifNone: [nil]
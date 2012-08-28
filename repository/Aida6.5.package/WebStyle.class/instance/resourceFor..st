private
resourceFor: aRequest
	"request come here from a router to find an appropriate resource"
	| reqUrl |
	reqUrl := aRequest urlString.
	^self resources values 
		detect: [:resource | resource preferredUrl = reqUrl ]
		ifNone: [nil]
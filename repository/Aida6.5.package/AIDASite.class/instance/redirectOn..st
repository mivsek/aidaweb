private-serving
redirectOn: aSession
	"Squeak specific! "
	| location response |
	location := aSession redirectLink composeURLOn: aSession.
	location := AIDASite convert: location toCodepage: aSession codePage.
	location := location notNil 
		ifTrue: [location copyReplaceAll: '&amp;' with: '&'] "well, why exactly?"
		ifFalse: [''].
	response := HTTPResponse redirectLink "Squeak specific! "
		location: location.
	aSession cookie ifFalse: [response cookie: (self cookieHeaderFor: aSession)].
	aSession redirectLink: nil.
	^response.
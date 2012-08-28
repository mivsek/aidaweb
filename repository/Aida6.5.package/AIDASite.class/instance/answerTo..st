serving
answerTo: aRequest 
	"Squeak specific! "
	| session object errorResponse |
	[self logRequest: aRequest.
	aRequest isPing ifTrue: [^HTTPResponse ok].  "/ping.html for monitoring the site"
	session := self sessionManager findOrCreateSessionFor: aRequest.
	aRequest session: session.
	session isHttpAuthenticationNeeded ifTrue: [session authenticateFrom: aRequest].
	session isHttpAuthenticationNeeded "still" ifTrue: [^self unauthorizedResponse].
	self shouldRedirect ifTrue: [^self redirectToOtherHost: aRequest on: session].
	self log: 'p'.
	object := self router resourceFor: aRequest.  "routes to a resource able to handle this request"
	self countRequest: aRequest onObject: object.
	object isNil 
		ifTrue: [session removeIfNewGuest. ^HTTPResponse notFound].
	^self answer: object to: aRequest on: session] 
		on: Error, Exception
		do: [:exception |                      
			self halt.
			exception class == HTTPException ifTrue: [^exception response].
			exception class == SpSocketError 
				ifTrue: [self reportSocketError: exception request: aRequest] "temporary"
				ifFalse:
					["self reportException: exception. " "temporary off, no gain to report to Transcript!"
					exception defaultAction]. 
			errorResponse := self httpResponseOnException: exception.
			HTTPException raiseResponse: errorResponse.
			^errorResponse].
private-serving
redirectToOtherHost: aRequest on: aSession
	| response |
	response := HTTPResponse redirectLink 
		location: self redirectToHost.
	aSession cookie ifFalse:  "if immediate redirect on a new session"
		[response cookie: (self cookieHeaderFor: aSession)].
	^response.
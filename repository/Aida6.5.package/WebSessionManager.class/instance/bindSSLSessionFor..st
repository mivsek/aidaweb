private
bindSSLSessionFor: aRequest
	"Try to find a session among currently live sessions. It helps with a session id in a query 
	part of url. If not found, or id not in query string, then make a new session"
	| session id |
	id := aRequest queryAt: 'sessionId' ifAbsent: [self error: 'no session id!'].
	session := (self existSessionWithID: id asInteger)
		ifTrue: [self findSessionWithID: id asInteger]
		ifFalse: [self error: 'no session with that id'].
	session requests size = 1
		ifTrue: [self countNewVisitor]
		ifFalse: 	[self checkAndCountReturningVisitor: session].
	session lastRequest: aRequest.
	(aRequest includesQuery:  'setLanguage') ifTrue:
		[session language: (aRequest queryAt: 'setLanguage') asSymbol].
	^session.
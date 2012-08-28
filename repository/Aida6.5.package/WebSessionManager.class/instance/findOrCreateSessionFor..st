adding-removing
findOrCreateSessionFor: aRequest
	"Try to find a session among currently live sessions. It helps with a session id in a query 
	part of url. If not found, or id not in query string, then make a new session"
	| session id cookie |
	(self hasSSLBinding: aRequest) ifTrue: [^self bindSSLSessionFor: aRequest].
	(aRequest hasCookie and: [aRequest idFromCookie notNil])
		ifTrue: [id := aRequest idFromCookie. cookie := true. self site log: ' cookie ' ]
		ifFalse: 
			[cookie := false. id := aRequest queryAt: 'id' ifAbsent: [(self newSessionCookie: cookie) id] ].
	session := (self existSessionWithID: id asInteger)
		ifTrue: [self findSessionWithID: id asInteger] 
		ifFalse: [self newSessionCookie: cookie id: id asInteger].
	session requests size = 1 
		ifTrue: [self countNewVisitor] ifFalse: 	[self checkAndCountReturningVisitor: session].
	session checkExpirationAndPossiblyLogoutFor: aRequest.
	session lastRequest: aRequest.  
	session registerIP; setLastActivity.
	session cookie: cookie. 
	(cookie not and: [self site urlsWithSessionId]) ifTrue: [session addSessionID].

	(aRequest includesQuery:  'setLanguage') ifTrue:
		[session language: (aRequest queryAt: 'setLanguage') asSymbol].
	^session.
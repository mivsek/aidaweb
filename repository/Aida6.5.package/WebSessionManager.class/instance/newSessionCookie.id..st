private
newSessionCookie: aBoolean id: aSessionID
	"open and return a fresh new session"
	| session |
	session := WebSession newOn: self.
	aSessionID notNil ifTrue: [session id: aSessionID].
	self site log: ' new session '.
	self addSession: session.
	session cookie: aBoolean.
	^session
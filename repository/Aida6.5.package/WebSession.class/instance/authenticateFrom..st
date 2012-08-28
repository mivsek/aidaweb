security-login
authenticateFrom: aRequest
	"try to login with username and password from request (rfc2617)"
	| usr |
	aRequest username isNil ifTrue: [^nil].
	usr := self site securityManager userNamed: aRequest username.
	usr isNil ifTrue: [^nil].
	(aRequest matchUserWithPassword: usr password) 
		ifTrue: [self loginUser: usr] ifFalse: [self logout].
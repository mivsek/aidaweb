private
findHostPortOn: aSession
	"finds hostname and port for complete url. Returns association host->port"
	| host session|
	(self site host ~= '*') ifTrue:  "host ant port clearly defined in site's url identifier"
		[^self site host-> self site port]. 
	session := aSession notNil ifTrue: [aSession] ifFalse: [self firstSessionFromStack].
	session ifNil: 
		[session := self site sessionManager sessions values asOrderedCollection 
			detect: [:each | each lastRequest notNil] ifNone: [nil] ]. "good enough?" 
	session ifNil: [^'localhost'->self site port].
	host := (session lastRequest 
		headerAt: 'x-forwarded-host'   "find host from request"
		ifAbsent: [[session lastRequest host ]]) value. 
	^host->self site port
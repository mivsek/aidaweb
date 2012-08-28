accessing-other
requests
	"return the history of all requests on this session as ordered collection with the oldest as 
	first and newest as last"
	^self otherAt: #requests ifAbsent: [self initRequests].
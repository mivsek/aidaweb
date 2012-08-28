private
hasSSLBinding: aRequest
	"if sessionId=456546464 exist in query part of request. This means that this is 
	a SSL session with its own cookie and must be bind to a normal session with sessionId"

	^aRequest isEncrypted and: [aRequest includesQuery: 'sessionId']
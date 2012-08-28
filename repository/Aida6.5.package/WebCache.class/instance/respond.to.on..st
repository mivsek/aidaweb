caching
respond: anObject to: aRequest on: aWebSession
	| response |
	response := HTTPResponse ok.
	aRequest task response: response.
	self site addResponseHeadersTo: response forPage: nil on: aWebSession.
	response entity: (self entryForObject: anObject view: aRequest view) content. 
	self site log: ' cached done'.
	^response
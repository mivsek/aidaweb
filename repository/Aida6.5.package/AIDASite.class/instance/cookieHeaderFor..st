private-serving
cookieHeaderFor: aSession 
	"set a permanent cookie on client (up to year 2020, enough?) "
	"for secure sessions different id as for usual ! "
	| id |
	id := (aSession lastRequest notNil and: [aSession lastRequest isEncrypted])
		ifTrue: [aSession secureId] ifFalse: [aSession id].
	^(WriteStream on: String new)
		nextPutAll: self cookieName;
		nextPutAll: '=';
		nextPutAll: id printString;
		nextPutAll: '; path=/; expires=Friday, 01-Jan-2020 01:00:00 GMT; HttpOnly'; 
			"HttpOnly to prevent session hijacking by malicious JS scripts like in XSS attacs"
		contents
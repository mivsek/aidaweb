private-serving
streamAjaxResponseOn: aStream for: aRequest on: aWebSession
	| jsonString |
	jsonString := self packToJSONMessages: self queue.
	aStream nextPutAll:  jsonString.
"	aStream nextPutAll:  (AIDASite convert: jsonString toCodepage: #UTF8). "
	self initQueue.
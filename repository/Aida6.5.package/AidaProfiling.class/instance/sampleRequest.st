support
sampleRequest
	| requestStream req |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET /admin?view=login HTTP/1.1';
		nextPutLine: 'Cookie: aida9357=123456';
		crlf.
	req := HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents).
	req task: SwazooTask new.  req task request: req.
	req task connection: (HTTPConnection new stream: (SwazooStream on: String new)).
	^req
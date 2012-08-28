support
static100KBRequest
	| requestStream req |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET /test100K.jpg HTTP/1.1';
		crlf;
		nextPutLine: 'Cookie: aida9357=123456';
		crlf.
	req := HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents).
	req task: SwazooTask new.  req task request: req.
	req task connection: (HTTPConnection new stream: (SwazooStream on: String new)).
	^req
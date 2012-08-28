support
pingRequest
	| requestStream req |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET /ping.html HTTP/1.1';
		crlf.
	req := HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents).
	req task: SwazooTask new.  req task request: req.
	req task connection: (HTTPConnection new stream: (SwazooStream on: String new)).
	^req
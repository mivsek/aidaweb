private-streaming
streamFileToResponse: aHTTPStreamedResponse
	| stream | 
	[stream := self filename asFilename readStream binary. 
	[stream atEnd] whileFalse: [aHTTPStreamedResponse nextPut: stream next] ] 
		ensure: [stream close]
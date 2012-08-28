private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	"Well, we actually stream JSON!"
	aStream nextPutAll: 
		self presenterBlock value "by default [self observee asJson] value"
private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession.].
	aStream nextPutAll: self ident, '<input'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: self tagClosing.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
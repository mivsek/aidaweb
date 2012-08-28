private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession. 
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<table'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: '>', self eol.
	super streamHtmlTo: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</table>', self eol.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
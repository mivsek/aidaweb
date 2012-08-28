private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession. 
	aStream nextPutAll: self ident, '<tr'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: '>', self eol.
	super streamHtmlTo: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</tr>', self eol.
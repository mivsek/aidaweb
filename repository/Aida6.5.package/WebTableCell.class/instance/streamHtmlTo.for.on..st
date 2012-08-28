private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession. 
	aStream nextPutAll: self ident, '<td'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: '>'.
	super streamHtmlTo: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</td>', self eol.
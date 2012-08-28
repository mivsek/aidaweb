private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession. 
	aStream nextPutAll: self ident, '<a'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: '>'.
	"print a text with attributes and composite elements"
	super streamHtmlTo: aStream for: aRequest on: aSession.
	aStream nextPutAll: '</a>', self  eol.
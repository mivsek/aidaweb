private
streamHtmlTo: aStream for: aRequest on: aSession
	| tag |
	self prepareToHtmlStreamingOn: aSession. 
	self kind == #ordered ifTrue: [tag := 'ol'].
	self kind == #unordered ifTrue: [tag := 'ul'].
	self kind == #definition ifTrue: [tag := 'dl'].
	aStream nextPutAll: self ident, '<', tag.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: '>', self eol.
	super streamHtmlTo: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident, '</', tag, '>', self eol.
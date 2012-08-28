private
streamHtmlTo: aStream for: aRequest on: aSession
	| tag |
	self prepareToHtmlStreamingOn: aSession. 
	type = #paragraph ifTrue: [tag := 'p'].
	type = #break ifTrue: [tag := 'br'].
	type = #ruler ifTrue: [tag := 'hr'].
	aStream nextPutAll: self ident, '<', tag.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: self tagClosing, self eol.
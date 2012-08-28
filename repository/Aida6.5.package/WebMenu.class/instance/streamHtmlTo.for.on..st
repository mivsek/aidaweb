private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<select'.
	self streamAttributesTo: aStream for: aSession.
	self isMultiple ifTrue: [aStream nextPutAll: ' multiple'].
	aStream nextPutAll: '>'.
	self streamOptionsTo: aStream.
	aStream nextPutAll: '</select>'.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
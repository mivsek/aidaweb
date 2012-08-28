private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareModule.
	self prepareToHtmlStreamingOn: aSession.
	self scriptBefore notNil 
		ifTrue: [self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<div'. self streamAttributesTo: aStream for: aSession. 
	aStream nextPutAll: '>', self eol.
	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: [element streamHtmlTo: aStream for: aRequest on: aSession] ] ].
	aStream nextPutAll: self ident, '</div>', self eol.
	self scriptAfter notNil 
		ifTrue: [self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
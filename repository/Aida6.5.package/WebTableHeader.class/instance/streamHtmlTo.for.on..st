private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession. 
	aStream nextPutAll: self ident, '<th'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: '>'.
	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: 
			[element streamHtmlTo: aStream for: aRequest on: aSession] ] ].
	aStream nextPutAll: self ident, '</th>', self eol.
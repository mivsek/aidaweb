private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	"WebElement with some attributes is enclosed inside <div> tag, for tricks with CSS"
	self prepareToHtmlStreamingOn: aSession.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	self hasTag ifTrue: 
		[aStream nextPutAll: self ident, '<', self tag asString. self streamAttributesTo: aStream for: aSession. 
		aStream nextPutAll: '>', self eol].
	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: [element streamHtmlTo: aStream for: aRequest on: aSession] ] ].
	self hasTag ifTrue: [aStream nextPutAll: self ident, '</', self tag asString, '>', self eol].
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
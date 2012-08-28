private-building
streamHtmlTo: aStream for: aRequest on: aSession
	"self buildTable." "not so late, build imediately after adding to some parent!"
	self prepareToHtmlStreamingOn: aSession. "buildTable"
	aStream nextPutAll: self ident, '<div'. self streamAttributesTo: aStream for: aSession. 
	aStream nextPutAll: '>', self eol.
	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: [element streamHtmlTo: aStream for: aRequest on: aSession] ] ].
	aStream nextPutAll: self ident, '</div>', self eol.
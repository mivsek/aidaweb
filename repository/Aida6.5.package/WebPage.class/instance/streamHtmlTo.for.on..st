private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	self 
		lateInitPageHeaderLinks;
		rearangeHeaders.
	self setStateStreaming.
	aStream 
		nextPutAll: self htmlDocType, self eol.
	aStream 
		nextPutAll: '<html', (self htmlTagAttributes notNil ifTrue: [' ', self htmlTagAttributes] ifFalse: ['']), '>';
		nextPutAll: self eol, ' <head>', self eol;
		nextPutAll: '  <meta name="generator" content="Aida/Web v', AIDASite version, ', Smalltalk Web Application Server (www.aidaweb.si)"', self tagClosing, self eol.
	self streamHeaderElementsTo: aStream on: aSession. "including title"
	aStream nextPutAll: ' </head>', self eol.
	aStream nextPutAll: ' <body'. self streamAttributesTo: aStream for: aSession. 
	aStream nextPutAll: '>', self eol.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	self streamWarningMessageTo: aStream. "if any"

	elements notNil ifTrue: [elements do: [:element | 
		element notNil ifTrue: [element streamHtmlTo: aStream for: aRequest on: aSession] ] ].

	aStream nextPutAll:  self ident, ' </body>', self eol.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
	aStream nextPutAll:  '</html>', self eol.
	self setStateFinished.
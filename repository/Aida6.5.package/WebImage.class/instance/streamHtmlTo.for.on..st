private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession. 
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<img'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: self tagClosing.
	self imageMap notNil ifTrue: 
		[imageMap streamHtmlTo: aStream for: aRequest on: aSession].
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	self ensureId. 
	self prepareClassAttribute.
	self prepareToHtmlStreamingOn: aSession.
	self allow ifTrue: [self addSetupScript].
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	aStream nextPutAll: self startAttributeTag.
	aStream nextPutAll: '<span '. self streamAttributesTo: aStream for: aSession. aStream nextPut: $>. 
	aStream nextPutAll: (self properlyFormatedValueOn: aSession).
	aStream nextPutAll: '</span>', self endAttributeTag.
	(self allow and: [self triggerElement isKindOf: WebElement])
		ifTrue: [self triggerElement streamHtmlTo: aStream for: aRequest on: aSession].
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
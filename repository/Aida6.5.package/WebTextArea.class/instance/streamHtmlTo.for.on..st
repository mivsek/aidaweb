private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession.
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	aStream nextPutAll: self ident, '<textarea'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: '>'.
	self value notNil ifTrue:
		[aStream nextPutAll:    "encode only quotes as &quot; then UTF8" 
			(self autoConvertAndEncodeValue: self value on: aSession)]. 
	aStream nextPutAll: '</textarea>'.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
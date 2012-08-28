private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	| url allowed |
	self prepareToHtmlStreamingOn: aSession. 
	allowed := self security notNil ifTrue: [self accessAllowedFor: aSession] ifFalse: [true].
	allowed 	ifTrue: 
		[url := self composeURLOn: aSession.
		url notNil ifTrue:
			[aStream nextPutAll: self ident, '<a'. self streamAttributesTo: aStream for: aSession. 
			aStream nextPutAll: '>'.
			super streamHtmlTo: aStream for: aRequest on: aSession.
			aStream nextPutAll: '</a>'] ]
		ifFalse: [self security = #grayed ifTrue: 
			["print a grayed text with attributes and composite elements"
			self title: self accessNotAllowedText.
			aStream nextPutAll: self ident, '<font'. self streamAttributesTo: aStream for: aSession. 
			aStream nextPutAll: 'color="#c0c0c0">'.
			super streamHtmlTo: aStream for: aRequest on: aSession.
			aStream nextPutAll: '</font>', self  eol ] ].
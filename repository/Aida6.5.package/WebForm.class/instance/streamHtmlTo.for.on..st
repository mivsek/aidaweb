private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession.
	self isTopForm 
		ifTrue:   "subforms don't have a method parameter"
			[self isTagHidden ifFalse: 
				[aStream nextPutAll: 
					self ident, '<form  method="post" action="', (self prepareActionStringOn: aSession),  
						'"', ' enctype="multipart/form-data"'.
				self streamAttributesTo: aStream for: aSession.
				aStream nextPutAll: '>', self eol] ]
		ifFalse: 
			[aStream nextPutAll: '<div comment="subform" '.
				self streamAttributesTo: aStream for: aSession.
				aStream nextPutAll: '>', self eol].
	super streamHtmlTo: aStream for: aRequest on: aSession.
	aStream nextPutAll:  self ident, 
		((self isTopForm and: [self isTagHidden not]) ifTrue: ['</form>'] ifFalse: ['</div>'])
		, self eol.
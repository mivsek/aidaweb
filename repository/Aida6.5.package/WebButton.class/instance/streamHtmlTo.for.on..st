private
streamHtmlTo: aStream for: aRequest on: aSession
	(self isAjaxSubmit not "yet" and: [self shouldAjaxSubmit]) 
		ifTrue: [self ajaxSubmit].
	self ensureOnClickReturnFalseAtEnd. "for ajaxSubmit"
	self scriptBefore notNil ifTrue: 
		[self scriptBefore streamHtmlTo: aStream for: aRequest on: aSession].
	self image notNil ifTrue: [self prepareImageAttributeOn: aSession].
	self prepareToHtmlStreamingOn: aSession.
	aStream nextPutAll: self ident, '<input'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: self tagClosing.
	self scriptAfter notNil ifTrue: 
		[self scriptAfter streamHtmlTo: aStream for: aRequest on: aSession].
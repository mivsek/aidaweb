private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareToHtmlStreamingOn: aSession.
	aStream nextPutAll: self ident, '<input'.
	self streamAttributesTo: aStream for: aSession.
	self isChecked ifTrue: [aStream nextPutAll: ' checked'].
	aStream nextPutAll: self tagClosing.
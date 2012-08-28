private
streamHtmlTo: aStream for: aRequest on: aSession 
	| text |
	self prepareToHtmlStreamingOn: aSession.
	aStream nextPutAll: self ident , '<fieldset'.
	self 
		streamAttributesTo: aStream
		for: aSession.
	aStream nextPutAll: '>' , self eol.
	self legend notNil ifTrue: [
		text := self legend aidaIsAssociation "multilingual"
			ifTrue: [self textFromMultilang: self legend on: aSession]
			ifFalse: [self legend].
		aStream nextPutAll: self identMore , '<legend>' , 
		(AIDASite convertToWeb: text on: aSession) , 
		'</legend>' , self eol].
	super 
		streamHtmlTo: aStream for: aRequest on: aSession.
	aStream nextPutAll: self ident , '</fieldset>' , self eol
private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	self filename isNil
		ifTrue: [aStream nextPutAll: self content]
		ifFalse: [aStream nextPutAll: 
			(SpFilename named: self filename) 
				underlyingFilename contentsOfEntireBinaryFile asString]
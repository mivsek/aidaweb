private
streamHtmlTo: aStream for: aRequest on: aSession
	text notNil ifTrue: [aStream nextPutAll: self text].
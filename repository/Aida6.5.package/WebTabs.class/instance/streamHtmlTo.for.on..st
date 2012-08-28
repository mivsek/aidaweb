private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	(self selected notNil and: [self selected <= self elements size]) ifTrue:
		[(self elements at: self selected) class: self selectedClass].
	super streamHtmlTo: aStream for: aRequest on: aSession.
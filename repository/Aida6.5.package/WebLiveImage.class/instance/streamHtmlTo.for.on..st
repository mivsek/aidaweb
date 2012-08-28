private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	"refresh gif if nesessary and put it into a HTML stream"
	Processor activeProcess priority: (Processor activeProcess priority - 3).
	self refreshNeeded ifTrue: 
		[self drawImage.
		self addToCache].
	aStream nextPutAll: self gif asByteString.
	Processor activeProcess priority: (Processor activeProcess priority + 3).
	self lastUsed: Timestamp now.

"	aSession server urlResolver removeObject: self "
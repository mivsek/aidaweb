private-streaming
aidaPresenterFor: aRequest on: aSession 
	self fileStillExist ifFalse: [self removeYourself. ^WebPage new].
	(self content isNil and: [self aidaContentType = 'text/html' or: [self isToBeCached] ]) 
		ifTrue: [^self refreshContent]. 
	self hasFileChanged ifTrue: 
		[self refreshContent.
		self indexContent].
	^self
serving
answer: anObject toGetOrPost: aRequest on: aWebSession
	| presenter stream response properContent |
	(self cache isCached: anObject to: aRequest on: aWebSession)
		ifTrue: [^self cache respond: anObject to: aRequest on: aWebSession].
	[presenter := anObject aidaPresenterFor: aRequest on: aWebSession]
		ifCurtailed: [self finalizeExecutingRequest: aRequest].
	presenter isNil ifTrue:   "not found"
		[aWebSession removeIfNewGuest. ^HTTPException notFound].
	aWebSession isHttpAuthenticationNeeded "because of logout" ifTrue:  [^self unauthorizedResponse].
	aWebSession shouldRedirect ifTrue: [^self redirectOn: aWebSession].
	self log: 'h'.
	presenter aidaIsRespondingStreamed
		ifTrue: 
			[ [presenter streamHtmlTo: nil "not needed" for: aRequest on: aWebSession]
				ensure: [self finalizeExecutingRequest: aRequest].
			self log: ' done'.
			^aRequest streamedResponse]
		ifFalse: 
			[response := HTTPResponse ok.
			aRequest task response: response.
			self addResponseHeadersTo: response forPage: presenter on: aWebSession.
			stream := WriteStream on: (String new: 10000).
			[presenter streamHtmlTo: stream for: aRequest on: aWebSession]
				ensure: [self finalizeExecutingRequest: aRequest].
			properContent := (AIDASite properArray: stream contents). "in case of TwoByteString"
			response entity: properContent. 
			(self cache shouldCache: anObject to: aRequest on: aWebSession)
				ifTrue: [self cache store: properContent for: anObject to: aRequest on: aWebSession].
			self log: ' done'.
			^response]
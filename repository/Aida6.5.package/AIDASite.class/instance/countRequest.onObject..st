private-counters
countRequest: aRequest  onObject: anObject
	self announceActivity. "must be before setting last request timestamp!"
	self setLastRequestTimestamp.
	aRequest session shouldCountRequests ifFalse: [^nil].    "to skip admin requests etc."
	anObject class == WebSession ifTrue: [^nil]. "don't count ajax and websocket requests"
	anObject notNil 
		ifTrue: 
			[self urlResolver incCounterFor: anObject.
			self incRequestCounterFor: anObject]
		ifFalse: 
			[self incNotFoundCounter.
			self log: ' not found: ', aRequest uriString, ' '.
			^nil ].
	self statistics collectStatsFrom: aRequest.
	^anObject
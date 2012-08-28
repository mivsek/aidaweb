caching
store: aByteStringOrArray for: anObject to: aRequest on: aWebSession
	| timeout |
	timeout := anObject aidaCacheTimeout notNil
		ifTrue: [anObject aidaCacheTimeout notNil] "per domain object cache timeout"
		ifFalse: [self cacheTimeout]. 		"global cache timeout"
	self addObject: anObject view: aRequest view 
		content: aByteStringOrArray timeout: timeout
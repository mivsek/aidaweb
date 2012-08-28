testing
isCaching
	"should this file be always cached?"
	caching isNil ifTrue: [self resetCaching].
	^caching
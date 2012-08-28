testing
isClosed
	"realtime channel connection is closed"
	self connection isNil ifTrue: [^true].
	^self isWebSocket 
		ifTrue: [self connection isOpen not]
		ifFalse: [self connection isClosed] "for Comet"
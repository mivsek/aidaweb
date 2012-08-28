cleanup
removeIfNonactive
	"check and remove if app or view is nonactive, also if connection is already closed"
	"call that when page unload event came to close its realtime connections"
	self isClosed ifTrue: [^self removeYourself].
	(self app isNil  or: [self app isActive not])
		ifTrue: [self removeYourself]
		ifFalse: [(self app isActiveView: self view) ifFalse: [self removeYourself] ]
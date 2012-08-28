caching
isCached: anObject to: aRequest on: aWebSession
	| entry |
	entry := ((self objects at: anObject ifAbsent: [^false])
		at: aRequest view ifAbsent: [^false]).
	entry isTimedOut 
		ifTrue: [self removeObject: anObject view: aRequest view. ^false].
	^true
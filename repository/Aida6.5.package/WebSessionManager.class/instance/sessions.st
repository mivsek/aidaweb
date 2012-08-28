private
sessions
	"dictionary of sessions by session id as the key. Not that session can have two ids, for ssl too!"
	sessions isNil ifTrue: [self initSessions].
	^sessions
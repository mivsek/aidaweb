odb specific
freeSession

	"find a session in a pool of sessions which is not current and not busy"

	| allSessions pick |
	allSessions := GBSM loggedInSessions asOrderedCollection.
	allSessions 
		remove: GBSM currentSession;
		removeAll: self busySessions.
	allSessions notEmpty
		ifTrue:
			[pick := (Random new next * allSessions size) truncated + 1.
			^allSessions at: pick]
		ifFalse: [^GBSM currentSession]


"WebTransactionMonitor freeSession"
accessing
allActiveSessions
	^self allSessions select: [:each | each isActive]
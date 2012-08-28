accessing
allLoggedInSessions
	^self allSessions select: [:each | each isLoggedIn]
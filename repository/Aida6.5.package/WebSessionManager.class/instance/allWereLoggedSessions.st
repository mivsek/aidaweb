accessing
allWereLoggedSessions
	"all sessions which were or still are logged in"
	^self allSessions select: [:each |
		each isLoggedIn or: [each neverLoggedIn not] ] "was or still is logged in"
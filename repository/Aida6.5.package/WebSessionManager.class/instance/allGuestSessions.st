accessing
allGuestSessions
	"guest and never logged in"
	^self allSessions select: [:each | 
		(each user isNil or: [each user isGuest]) and: [each neverLoggedIn] ].
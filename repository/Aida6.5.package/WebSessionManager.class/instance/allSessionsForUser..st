accessing
allSessionsForUser: aWebUser
	"all sessions (logged-in or not) for that user"
	^self allSessions select: [:each | 
		each user = aWebUser or: 
			[each isLoggedIn not and: [each wasLoggedInUser: aWebUser] ] ]
accessing
activeSessionsForUsername: aString
	"find active sessions for a user with that username"
	"(AIDASite named: 'wikib') sessionManager activeSessionsForUsername: 'mivsek' "
	^self allActiveSessions select: [:each | each user username = aString]
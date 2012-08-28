instance creation
newOn: aWebSessionManager
	"new web session on a specified session manager"
	| session |
	session := super basicNew.
	session parent: aWebSessionManager.
	session initialize.
	^session
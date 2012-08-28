accessing
loginStateText
	"login, logout, guest"
	(self isGuest and: [self neverLoggedIn]) ifTrue: [^'guest'].
	self isLoggedIn ifTrue: [^'login'].
	^'logout'
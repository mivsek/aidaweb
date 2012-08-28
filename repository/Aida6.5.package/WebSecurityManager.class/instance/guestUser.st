user management
guestUser
	"actually only one is guest user"
	^self users 
		detect: [:each | each isGuest] 
		ifNone: [self error: 'Guest user missing?']
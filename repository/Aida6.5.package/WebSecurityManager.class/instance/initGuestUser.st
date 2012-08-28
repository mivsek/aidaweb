initialize-release
initGuestUser
	"add new user,with name 'Guest'"
	| user |
	(self users detect: [:each | each isGuest] ifNone: [nil] ) notNil ifTrue: [^nil].
	user := WebUser newGuest.
	user setLocked. "to avoid name/username changes"
	self addUser: user.
	self allUsersGroup addUser: user.
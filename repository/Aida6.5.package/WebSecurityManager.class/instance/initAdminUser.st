initialize-release
initAdminUser
	"add default admin user"
	| user |
	(self users detect: [:each | each isAdminUser] ifNone: [nil] )
		notNil ifTrue: [^nil].
	user := WebUser newAdmin.
	user setLocked. "to avoid name/username changes"
	self addUser: user.
	self adminGroup addUser: user.
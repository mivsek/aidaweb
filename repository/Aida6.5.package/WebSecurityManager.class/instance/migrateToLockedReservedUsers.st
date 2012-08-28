private
migrateToLockedReservedUsers
	"to preserve them by not allowing changes"
	"WebSecurityManager allInstances do: [:each | each migrateToLockedReservedUsers] "	
	| user |
	user := self adminUser.
	user isNil ifTrue: [self initAdminUser. user := self adminUser].
	user setLocked.
	user := self guestUser.
	user isNil ifTrue: [self initGuestUser. user := self guestUser].
	user setLocked.
	user := self extranetUser.
	user isNil ifTrue: [self initExtranetUser. user := self extranetUser].
	user setLocked.
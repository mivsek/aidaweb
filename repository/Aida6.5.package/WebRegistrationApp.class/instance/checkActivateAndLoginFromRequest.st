actions
checkActivateAndLoginFromRequest
	"return true if succefull. Also login if not already"
	| uuid user |
	uuid := self context request queryAt: 'uuid' ifAbsent: [^false].
	user := self site securityManager userWithUuid: uuid.
	(user isNil or: [user inActivatingGroup not]) ifTrue: [^false].
	self site securityManager addRegisteredUser: user.
	self site securityManager activatingGroup removeUser: user.
	self session isLoggedIn ifFalse: [self session loginUser: user].
	^true
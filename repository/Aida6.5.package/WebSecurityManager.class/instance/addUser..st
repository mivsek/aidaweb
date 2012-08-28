user management
addUser: aWebUser
	"add new user also in All Users group"
	(aWebUser isKindOf: WebUser) ifFalse: [^self error: 'This is not aWebUser'].
	(self users includes: aWebUser) ifTrue: [^nil].
	(self existUserNamed: aWebUser username withPassword: aWebUser password) ifTrue: [^nil]. 
	self users add: aWebUser.
	self allUsersGroup addUser: aWebUser.
	aWebUser parent: self.
	^aWebUser
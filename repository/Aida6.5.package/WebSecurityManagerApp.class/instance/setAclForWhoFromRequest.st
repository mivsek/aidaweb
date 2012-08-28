printing
setAclForWhoFromRequest
	"who can be user or group"
	| uuid user |
	uuid := self session lastRequest queryAt: 'who'.
	user := self observee userWithUuid: uuid.
	self aclForWho: (user notNil 
		ifTrue: [user] 
		ifFalse: [self observee groupWithUuid: uuid]).
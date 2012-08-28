user management
removeUser: aWebUser
	"remove user, if exist" 
	(self users includes: aWebUser) ifFalse: [^nil].
	self users remove: aWebUser.
	self allGroups do: [:group | group removeUser: aWebUser].
	self removeAllAccessRightsFor: aWebUser
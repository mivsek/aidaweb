user management
addRegisteredUser: aWebUser
	"add this user also to registered users group. Remove him from activating group"
	self addUser: aWebUser.
	self registeredGroup addUser: aWebUser.
	self activatingGroup removeUser: aWebUser.
	aWebUser setRegisteredTimestamp.
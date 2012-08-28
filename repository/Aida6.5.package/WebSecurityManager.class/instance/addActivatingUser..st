user management
addActivatingUser: aWebUser
	"add this user also to group waiting for confirmation"
	self addUser: aWebUser.
	self activatingGroup addUser: aWebUser.
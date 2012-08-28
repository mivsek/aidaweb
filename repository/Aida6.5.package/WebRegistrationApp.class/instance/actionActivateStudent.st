actions
actionActivateStudent
	"GSoC: put user to Students group"
	self site securityManager studentsGroup addUser: self user.
	self actionActivate
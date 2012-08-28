actions
actionActivateMentor
	"GSoC: put user to Mentors group"
	self site securityManager mentorsGroup addUser: self user.
	self actionActivate
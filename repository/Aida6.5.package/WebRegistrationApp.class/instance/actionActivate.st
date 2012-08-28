actions
actionActivate
	"goto user's profile"
	self user setRegisteredTimestamp.
	self sendRegistrationReport. "to the admin of website"
	self reportRegistration. "to transcript"
	self redirectTo: self user view: #main "user profile"
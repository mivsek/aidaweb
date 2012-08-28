actions-federated reg.
checkActivateAndLoginFederated
	"return true if succefull. Also login if not already"
	self newUser inActivatingGroup ifFalse: [^false].
	self site securityManager addRegisteredUser: self newUser.
	self site securityManager activatingGroup removeUser: self newUser.
	self session isLoggedIn ifFalse: [self session loginUser: self newUser].
	^true
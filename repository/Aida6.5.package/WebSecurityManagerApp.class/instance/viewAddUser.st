printing
viewAddUser
	| newUser |
	newUser := self site webUserClass new.
	self redirectTo: newUser view: #add
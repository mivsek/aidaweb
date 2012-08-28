user management
removeUserNamed:  anUsername withPassword: aPassword
	| user |
	user := self userNamed: anUsername withPassword: aPassword.
	self removeUser: user
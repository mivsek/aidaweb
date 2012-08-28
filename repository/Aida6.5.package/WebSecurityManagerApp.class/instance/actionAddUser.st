actions
actionAddUser
	self usr ~= '' ifTrue: [self observee addUser: self usr].
	self newView: #users.
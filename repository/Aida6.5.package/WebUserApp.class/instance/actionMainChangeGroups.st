actions
actionMainChangeGroups
	self observee groups do: [:group | group removeUser: self observee].
	self groups do: [:group | group addUser: self observee].
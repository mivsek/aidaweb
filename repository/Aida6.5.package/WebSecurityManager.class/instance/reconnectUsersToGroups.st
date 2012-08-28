private
reconnectUsersToGroups
	"if user groups don't match group users"
	"AIDASite default securityManager reconnectUsersToGroups"
	self users do: [:user |
		user groups do: [:group | (group includes: user) ifFalse: [group addUser: user] ] ].
	self groups do: [:group |
		group users do: [:user | (self users includes: user) ifFalse: [self addUser: user] ] ]
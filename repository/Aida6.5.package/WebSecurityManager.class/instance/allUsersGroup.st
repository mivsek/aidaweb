group management
allUsersGroup
	"group for all users in system"
	^self groups detect: [:each | each isAllUsersGroup] ifNone: [nil].
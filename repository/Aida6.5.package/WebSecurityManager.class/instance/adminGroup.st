group management
adminGroup
	"group for admins, those who have all acess rights ! "
	^self groups detect: [:each | each isAdminGroup] ifNone: [nil].
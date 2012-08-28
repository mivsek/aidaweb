user management
extranetUser
	"a common extranet user, for easier setup of access rights"
	^self users detect: [:each | each isExtranetUser] ifNone: [nil]
group management
activatingGroup
	"group for users to confirm registration"
	^self groups detect: [:each | each isActivatingGroup] ifNone: [nil].
group management
registeredGroup
	"group for registered users"
	^self groups detect: [:each | each isRegisteredGroup] ifNone: [nil].
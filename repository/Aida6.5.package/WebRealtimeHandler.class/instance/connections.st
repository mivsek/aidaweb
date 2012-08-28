accessing
connections
	"all currently open realtime connections"
	connections isNil ifTrue: [self initConnections].
	^connections
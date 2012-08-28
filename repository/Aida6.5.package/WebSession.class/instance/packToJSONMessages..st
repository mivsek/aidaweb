private-serving
packToJSONMessages: aCollection "of WebCommands"
	"convert commands to an array of JSON"
	^'[', (aCollection 
		inject: ''
		into: [:jsonString :command || separator |
			separator := command = aCollection last ifFalse: [','] ifTrue: [''].
			jsonString, command asJSON, separator]),
	  ']'
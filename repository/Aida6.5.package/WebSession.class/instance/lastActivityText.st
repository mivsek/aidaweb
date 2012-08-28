accessing-other
lastActivityText
	"the last activity (request) timestamp"
	^self lastActivity notNil
		ifTrue: [self lastActivity printSloString]
		ifFalse: ['']
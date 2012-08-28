accessing
session
	"session in which this realtime connection is open"
	^self handler notNil 
		ifTrue: [self handler session]
		ifFalse: [nil]
accessing
objectToStore
	^self adaptorToStore notNil
		ifTrue: [self adaptorToStore subject]
		ifFalse: [nil]
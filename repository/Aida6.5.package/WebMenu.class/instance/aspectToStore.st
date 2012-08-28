accessing
aspectToStore
	^self adaptorToStore notNil
		ifTrue: [self adaptorToStore aspect]
		ifFalse: [nil]
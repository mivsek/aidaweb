accessing
context
	^self parent notNil 
		ifTrue: [self parent]
		ifFalse: [self firstContextFromStack]
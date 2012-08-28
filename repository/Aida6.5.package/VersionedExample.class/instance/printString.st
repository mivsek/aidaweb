printing
printString
	^'aVersionedExample ', 
		(self title notNil ifTrue: [self title] ifFalse: ['']), ' ', 
		(self body notNil ifTrue: [self body] ifFalse: [''])
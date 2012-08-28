private
printString
	^'aWebLink to: ', (self ooReference notNil 
		ifTrue: ['a', self ooReference printString] ifFalse: [self urlReference]).
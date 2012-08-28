private
printString
	^'aWebCommand 
	command: ', self command printString, '
	context: ', self context printString, '
	app: ', (self app notNil ifTrue: [self app class name] ifFalse: ['unknown']), '
	view: ', self view printString, '
	element: ', (self element notNil 
		ifTrue: [self element class name, ' ', self element id printString] ifFalse: ['nil']), '
	value: ', (self value notNil ifTrue: [self value size printString, ' bytes'] ifFalse: ['nil'])
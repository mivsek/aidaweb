private
printString
	^'aWebEvent
	event: ', self event printString, '
	element: ', (self element notNil 
		ifTrue: [(self element isKindOf: Symbol) 
			ifTrue: [self element printString] 
			ifFalse: [self element class name, ' id: ', self element id printString] ]
		ifFalse: ['nil']), '
	context: ', (self context notNil 
		ifTrue: [(self context isKindOf: Number)  
			ifTrue: [self context printString] 
			ifFalse: [self context class name, ' ', self context id printString] ]
		ifFalse: ['nil'] ), '
	value: ', self value printString
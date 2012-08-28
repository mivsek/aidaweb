private
printString
	^'a', self class printString, 
		(self tag notNil ifTrue: [' ', self tag asString] ifFalse: ['']),
		(self id notNil ifTrue: [' id: ', self id] ifFalse: ['']),
		((self attributesAt: #class)  notNil ifTrue: [' class: ', (self attributesAt: #class) ] ifFalse: [''])
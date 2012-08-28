private-identation
level	
	"How deep we are in element hierarchy. Top element has level 0"
	^self parent notNil
		ifTrue: [self parent level + 1]
		ifFalse: [0]
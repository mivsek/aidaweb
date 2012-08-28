actions
addAnswer: anObject
	"set answer to current context"
	^self addActionBlock:
		[:receivedEvent |
		receivedEvent context answer: anObject].
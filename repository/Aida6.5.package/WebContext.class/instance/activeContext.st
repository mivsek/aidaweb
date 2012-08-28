accessing
activeContext
	"active is always the last context in the chain"
	^self isLast
		ifTrue: [self]
		ifFalse: [self child activeContext]
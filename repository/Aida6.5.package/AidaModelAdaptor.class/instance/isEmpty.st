testing
isEmpty
	"nothing entered in this field"
	^self buffer isNil or: [self buffer trimBlanks isEmpty]
auto type converting
autoConvertToString: anObject
	"try to convert object to string depending on object type"
	"Squeak specific!"
	(anObject isKindOf: String) ifTrue: [^anObject].
	(anObject isKindOf: Integer) ifTrue: [^anObject printString].
	(anObject isKindOf: Point) ifTrue: [^anObject printDotString]. "???" "Squeak specific!"
	(anObject isKindOf: Date) ifTrue: [^anObject shorterPrintSloString].
	anObject aidaIsAssociation ifTrue: [^anObject]. "multilingual"
	^anObject printString
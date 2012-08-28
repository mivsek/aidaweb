auto type converting
autoConvertString: aString toObject: anObject
	"try to convert string depending on object type"
	"Squeak specific"
	(anObject isKindOf: String) ifTrue: [^aString].
	(anObject isKindOf: Integer) ifTrue: [^aString asInteger].
	(anObject isKindOf: ScaledDecimal) ifTrue: [^aString asScaledDecimal: anObject scale].
	(anObject isKindOf: Date) ifTrue: [^Date readSloFrom: aString readStream].
	anObject isNil ifTrue: [^aString].
	^aString
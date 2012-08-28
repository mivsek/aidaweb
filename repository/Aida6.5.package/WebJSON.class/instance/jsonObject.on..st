private-serializing
jsonObject: anObject on: aStream
	(anObject isKindOf: String) ifTrue: [^self jsonString: anObject on: aStream].
	(anObject isKindOf: Number) ifTrue: [^self jsonNumber: anObject on: aStream].
	(anObject isKindOf: Dictionary) ifTrue: [^self jsonDictionary: anObject on: aStream].
	(anObject isKindOf: Collection) ifTrue: [^self jsonCollection: anObject on: aStream].
	anObject isNil ifTrue: [^self jsonNilOn: aStream].
	anObject = true ifTrue: [^self jsonTrueOn: aStream].
	anObject = false ifTrue: [^self jsonFalseOn: aStream].
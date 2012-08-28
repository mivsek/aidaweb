private-serializing
jsonDictionary: aDictionary  on: aStream
	| needComma |
	needComma := false.
	aStream nextPut: ${.
	aDictionary keysAndValuesDo: [:key :value |
		needComma
			ifTrue: [ aStream nextPutAll: ', ' ]
			ifFalse: [ needComma := true ].
		self jsonString: key asString on: aStream.
		aStream nextPutAll: ': '.
		self jsonObject: value on: aStream].
	aStream nextPut: $}.
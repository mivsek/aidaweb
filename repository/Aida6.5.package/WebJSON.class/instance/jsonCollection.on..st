private-serializing
jsonCollection: aCollection on: aStream
	| needComma |
	needComma := false.
	aStream nextPut: $[.
	aCollection do: [:element |
		needComma
			ifTrue: [ aStream nextPutAll: ', ' ]
			ifFalse: [ needComma := true ].
		self jsonObject: element on: aStream].
	aStream nextPut: $].
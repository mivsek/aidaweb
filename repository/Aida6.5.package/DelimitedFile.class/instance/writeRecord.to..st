file writing
writeRecord: anArray to: aStream

	| dm data1 |
	dm := false.
	anArray do: [:data |
		dm ifTrue: [aStream nextPut: self delimiter].
		(data isKindOf: Integer) ifTrue: [aStream nextPutAll: data printString].
		(data isKindOf: String) ifTrue: 
			[data1 := AIDASite returnCSZFromCP852String:  data.
			data1 := data1 select: [:ch | ch asInteger <=255].
			aStream nextPutAll: '"',data1,'"'].
		(data isKindOf: FixedPoint) ifTrue: 
			[data1 := data printDotString select: [:ch | ch ~= $. ].
			aStream nextPutAll: data1].
		dm := true].
	aStream nextPutAll: self crlf.
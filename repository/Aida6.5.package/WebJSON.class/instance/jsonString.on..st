private-serializing
jsonString: aString on: aStream
	| replacement |
	aStream nextPut: $".
	aString do: [:ch |
		replacement := self class escapeForCharacter: ch.
		replacement
			ifNil: [ aStream nextPut: ch ]
			ifNotNil: [ aStream nextPut: $\; nextPut: replacement ] ].
	aStream nextPut: $".
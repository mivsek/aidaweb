http encoding
convertIRItoURL: aString
	| stream aByteString |
	stream _ WriteStream on: ''.
	aByteString _ self convert: aString toCodepage: #utf8.
	aByteString do: [ :char |
	('abcdefghijklmnopqrstuvwxyz0123456789./-+:~?#@=' includes: char asLowercase)
		ifTrue: [ stream nextPut: char. ]
		ifFalse: [ stream nextPut: $%; nextPutAll: (char codePoint radix: 16). ]. ].
	^ stream contents.
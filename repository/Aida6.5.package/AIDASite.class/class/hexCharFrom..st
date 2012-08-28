http encoding
hexCharFrom: aNumber
	^aNumber < 10 
		ifTrue: [($0 asInteger + aNumber) asCharacter]
		ifFalse: [($A asInteger + aNumber - 10) asCharacter]
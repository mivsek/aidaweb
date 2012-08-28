http encoding
fromHexValue: aCharacter
	aCharacter isDigit 
		ifTrue: [^aCharacter asInteger - $0 asInteger]
		ifFalse: [
			(aCharacter asLowercase between: $a and: $f)
				ifTrue: [^aCharacter asLowercase asInteger - $a asInteger+10]
				ifFalse: [^nil]].
slovenian characters
isSloveneCharacter: aCharacter
	"return true if character is slovene"
	SloveneCharacters isNil ifTrue: [self initSloveneCharacters].
	^SloveneCharacters includes: aCharacter

"AIDASite isSloveneCharacter: AIDASite charC"
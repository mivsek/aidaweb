private
characterEscapeMap
	"WebJSON initCharacterEscapeMap"
	CharacterEscapeMap isNil ifTrue: [self initCharacterEscapeMap].
	^CharacterEscapeMap
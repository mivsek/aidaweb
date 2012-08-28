parsing
parseAny
	"This is the main entry point for the JSON parser. See also readFrom: on the class side."
	| c |
	self skipWhitespace.
	c := self peek asLowercase.
	c == ${ ifTrue: [self next. ^ self readDictionary].
	c == $[ ifTrue: [self next. ^ self readArray].
	c == $" ifTrue: [self next. ^ self readString].
	c == $t ifTrue: [^ self consume: 'true' returning: true].
	c == $f ifTrue: [^ self consume: 'false' returning: false].
	c == $n ifTrue: [^ self consume: 'null' returning: nil].
	c == $@ ifTrue: [self next. ^ self readConstructor].
	(WebJSON numbersMayContain: c) ifTrue: [^ self readNumber].
	self error: 'Unknown Json input'
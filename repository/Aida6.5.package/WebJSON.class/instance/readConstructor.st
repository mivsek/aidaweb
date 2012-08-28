private-parsing
readConstructor
	| s c v ctor |
	s := WriteStream on: ''.
	[
		c := self peek.
		c ifNil: [ILJsonSyntaxError signal: 'Premature EOF reading constructor name'].
		((c == $.) or: [c isLetter])
			ifTrue: [s nextPut: c. self next]
			ifFalse: [
				v := self parseAny.
				s := s contents.
				ctor := ctorMap ifNotNil: [ctor := ctorMap at: s ifAbsent: [nil]].
				ctor ifNil: [ILJsonSyntaxError signal: 'Unknown ctor ', s].
				^ ctor constructFromJson: v]
	] repeat.
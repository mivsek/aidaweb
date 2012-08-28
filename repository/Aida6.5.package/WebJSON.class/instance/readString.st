private-parsing
readString
	| str ch |
	str := WriteStream on: String new.
	[
		ch := self next.
		ch == $\
			ifTrue: [str nextPut: self interpretStringEscape.]
			ifFalse: [ch == $" ifTrue: [^ str contents.].
					str nextPut: ch]
	] repeat.
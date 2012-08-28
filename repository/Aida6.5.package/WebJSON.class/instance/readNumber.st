private-parsing
readNumber
	| str ch |
	str := WriteStream on: String new.
	[
		ch := self peek.
		(ch isNil not and: [self class numbersMayContain: ch]) ifFalse: [
			[^self numberFrom: str contents] on: Error do: [self error: 'Invalid number']].
		str nextPut: ch.
		self next.
	] repeat.
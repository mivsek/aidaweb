private-parsing
readDictionary
	| m k v needComma |
	m := Dictionary new.
	needComma := false.
	[
		self skipWhitespace.
		self peek == $} ifTrue: [self next. ^ m].
		needComma
			ifTrue: [self peek == $, ifFalse: [ILJsonSyntaxError signal: 'Missing comma'].
					self next. self skipWhitespace]
			ifFalse: [needComma := true.].
		self next == $" ifFalse: [ILJsonSyntaxError signal: 'Key in dictionary must be string'].
		k := self readString.
		self skipWhitespace.
		self peek == $: ifFalse: [ILJsonSyntaxError signal: 'Missing colon'].
		self next.
		v := self parseAny.
		m at: k put: v.
	] repeat.
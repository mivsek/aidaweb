private-parsing
readArray
	| a needComma |
	a := OrderedCollection new.
	needComma := false.
	[
		self skipWhitespace.
		self peek == $] ifTrue: [self next. ^ a asArray].
		needComma
			ifTrue: [self peek == $, ifFalse: [ILJsonSyntaxError signal: 'Missing comma'].
					self next.]
			ifFalse: [needComma := true]. 
		a add: self parseAny.
	] repeat.
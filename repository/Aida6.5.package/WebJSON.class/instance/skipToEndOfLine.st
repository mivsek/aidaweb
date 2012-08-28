private-parsing
skipToEndOfLine
	[self peek == Character cr or: [self peek == Character lf]] whileFalse: [self next].
	self skipWhitespace
private-parsing
skipWhitespace
	[self peek isSeparator] whileTrue: [self next].
	self skipComment.
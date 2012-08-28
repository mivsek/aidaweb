private-parsing
skipCommentBody
	[
		[self next == $*] whileFalse.
		self peek == $/
	] whileFalse.
	self next. "skip that last slash"
	self skipWhitespace.
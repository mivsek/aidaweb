private-parsing
skipComment
	self peek == $/ ifTrue: [
		self next.
		self peek == $/
			ifTrue: [self skipToEndOfLine]
			ifFalse: [self peek == $*
						ifTrue: [self next. self skipCommentBody]
						ifFalse: [ILJsonSyntaxError signal: 'Invalid comment syntax']]]
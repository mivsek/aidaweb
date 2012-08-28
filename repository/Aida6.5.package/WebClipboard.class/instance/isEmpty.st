testing
isEmpty
	^(self url isNil or: [self url isEmpty]) and: [self object isNil].
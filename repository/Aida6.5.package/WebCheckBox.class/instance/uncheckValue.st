private-events
uncheckValue
	self aspect notNil ifTrue: [self setAspectFalse].
	self selected notNil ifTrue: [self removeObjectFromSelected]
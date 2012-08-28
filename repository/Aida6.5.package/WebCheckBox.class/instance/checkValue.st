private-events
checkValue
	self aspect notNil ifTrue: [self setAspectTrue].
	self selected notNil ifTrue: [self addObjectToSelected]
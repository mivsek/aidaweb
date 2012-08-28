roles - specific
removeJobRole
	self jobRole notNil ifTrue: [self discontinueRole: self jobRole].
private
resetSummary
	(self summary notNil and: [self summary isKindOf: Number]) 
		ifTrue: [self summary: 0].
roles - specific
noMoreDeputyOf: aPerson
	| role |
	role := self roles 
		detect: [:each | each relatedParty == aPerson and: [each isDeputyRole] ] ifNone: [nil].
	role notNil ifTrue: [self discontinueRole: role].
	role := aPerson relatedPartyRoles 
		detect: [:each | each relatedParty == self and: [each isDeputyRole] ] ifNone: [nil].
	role notNil ifTrue: [aPerson discontinueRole: role].
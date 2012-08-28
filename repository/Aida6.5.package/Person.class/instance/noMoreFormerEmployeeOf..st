roles - specific
noMoreFormerEmployeeOf: aParty 
	| role |
	role := self roles 
		detect: [:each | each relatedParty == aParty and: [each isFormerEmployeeRole] ] ifNone: [nil].
	role notNil ifTrue: [self discontinueRole: role].
	role := aParty relatedPartyRoles 
		detect: [:each | each relatedParty == self and: [each isFormerEmployeeRole] ] ifNone: [nil].
	role notNil ifTrue: [aParty discontinueRole: role].
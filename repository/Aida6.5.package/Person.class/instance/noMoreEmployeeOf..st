roles - specific
noMoreEmployeeOf: aParty 
	"no more an employee of related party"
	| role |
	role := self roles 
		detect: [:each | each relatedParty == aParty and: [each isEmployeeRole] ] ifNone: [nil].
	role notNil ifTrue: [self discontinueRole: role].
	role := aParty relatedPartyRoles 
		detect: [:each | each relatedParty == self and: [each isEmployeeRole] ] ifNone: [nil].
	role notNil ifTrue: [aParty discontinueRole: role].

	self becomeFormerEmployeeOf: aParty.
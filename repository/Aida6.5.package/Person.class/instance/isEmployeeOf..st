roles - testing
isEmployeeOf: aParty
	| employee |
	employee := self roles contains: [:role | role relatedParty == aParty and: [role isEmployeeRole] ].
	employee ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == aParty and: [role isEmployeeRole] ].
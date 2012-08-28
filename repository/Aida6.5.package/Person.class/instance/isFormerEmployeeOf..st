roles - testing
isFormerEmployeeOf: aParty
	| formerEmployee |
	formerEmployee := self roles contains: [:role | 
		role relatedParty == aParty and: [role isFormerEmployeeRole]].
	formerEmployee ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == aParty and: [role isFormerEmployeeRole] ].
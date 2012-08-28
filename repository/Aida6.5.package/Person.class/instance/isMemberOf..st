roles - testing
isMemberOf: anOrgUnit
	| isMember |
	isMember := self roles contains: [:role | role relatedParty == anOrgUnit and: [role isMemberRole] ].
	isMember ifTrue: [^true].
	"check also a complementary role"
	^self relatedPartyRoles contains: [:role | role party == anOrgUnit and: [role isMemberRole] ].
roles - specific
noMoreMemberOf: anOrgUnit 
	"no more a memebr of related party"
	(self isMemberOf: anOrgUnit) ifFalse: [^nil].
	self discontinueRole:
		(self roles detect: [:role | role relatedParty == anOrgUnit and: [role isMemberRole] ] ifNone: [^nil])
roles - specific
becomeMemberOf: anOrgUnit 
	"I become a member  of that org.unit"
	| role |
	(self isMemberOf: anOrgUnit) ifTrue: [^false].
	role := MemberRole new.
	role name: 'member role'.
	self newRole: role relatedTo: anOrgUnit
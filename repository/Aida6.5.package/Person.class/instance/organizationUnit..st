roles - specific
organizationUnit: anOrganizationUnit
	self allOrgUnits do: [:each | self noMoreMemberOf: each].
	anOrganizationUnit notNil ifTrue: [self becomeMemberOf: anOrganizationUnit]
accessing
allOrgUnits
	^self parties select: [:each | each isKindOf: OrganizationUnit].
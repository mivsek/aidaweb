adding-removing
removeOrganizationUnit: anOrganizationUnit
	units isNil ifTrue: [^nil].
	(self units includes: anOrganizationUnit) ifTrue:
		[self units remove: anOrganizationUnit. anOrganizationUnit parent: nil]
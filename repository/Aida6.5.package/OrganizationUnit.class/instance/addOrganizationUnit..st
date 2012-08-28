adding-removing
addOrganizationUnit: anOrganizationUnit
	units isNil ifTrue: [self initUnits].
	(self units includes: anOrganizationUnit) ifFalse:
		[self units add: anOrganizationUnit. anOrganizationUnit parent: self]
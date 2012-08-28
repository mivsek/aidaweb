adding-removing
remove: aRoleOrGroup
	(self subroles includes: aRoleOrGroup) ifTrue: [self subroles remove: aRoleOrGroup]
adding-removing
add: aRoleOrGroup
	(self subroles includes: aRoleOrGroup) ifFalse: [self subroles add: aRoleOrGroup]
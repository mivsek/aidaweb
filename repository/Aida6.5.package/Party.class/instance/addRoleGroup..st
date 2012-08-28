role groups
addRoleGroup: aRoleGroup
	(self roleGroups includes: aRoleGroup) ifFalse: [self roleGroups add: aRoleGroup]
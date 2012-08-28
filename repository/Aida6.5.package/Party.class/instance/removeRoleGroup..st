role groups
removeRoleGroup: aRoleGroup
	(self roleGroups includes: aRoleGroup) ifTrue: [self roleGroups remove: aRoleGroup]
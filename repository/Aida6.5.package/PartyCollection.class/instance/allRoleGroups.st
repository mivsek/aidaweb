accessing
allRoleGroups
	^self parties select: [:each | each isKindOf: RoleGroup].
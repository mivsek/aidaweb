accessing
allRoleGroups
	^self subroles select: [:each | each isRoleGroup]
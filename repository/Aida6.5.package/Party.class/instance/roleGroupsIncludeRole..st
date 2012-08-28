role groups
roleGroupsIncludeRole: aRole
	^self roleGroups select: [:each | each includes: aRole]
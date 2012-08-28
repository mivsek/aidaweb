accessing
allJobRoles
	^self parties select: [:each | each isKindOf: JobRole].
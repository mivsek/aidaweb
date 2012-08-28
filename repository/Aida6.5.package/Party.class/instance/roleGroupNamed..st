role groups
roleGroupNamed: aString
	^self roleGroups detect: [:each | each name = aString] ifNone: [nil]
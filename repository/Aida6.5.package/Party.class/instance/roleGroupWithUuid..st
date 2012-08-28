role groups
roleGroupWithUuid: aString
	^self roleGroups detect: [:each | each uuid = aString] ifNone: [nil]
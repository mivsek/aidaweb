roles-basic
roleNamed: aString
	"find a role with that name"
	^self roles detect: [:each | each name = aString] ifNone: [nil]
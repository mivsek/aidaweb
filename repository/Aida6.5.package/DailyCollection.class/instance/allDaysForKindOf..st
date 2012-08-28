private-accessing
allDaysForKindOf: aClass
	"all day numbers on which something of that class exist"
	^self days keys select: [:day | 
		(self days at: day) contains: [:each | each isKindOf: aClass] ].
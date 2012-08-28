adding-removing
at: aDate ifAbsent: aBlock
	^self days at: aDate asDays ifAbsent: [aBlock value]
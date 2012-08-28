accessing
allDated: aDate

	^(self days at: aDate asDays ifAbsent: [^#()] ) copy
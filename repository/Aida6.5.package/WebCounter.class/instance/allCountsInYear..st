accessing
allCountsInYear: aYearNumber

	aYearNumber = self year 
		ifTrue: [^self dailyCounts copy]
		ifFalse: 
			[^(self yearlyHistory 
				at: aYearNumber 
				ifAbsent: [^Array new: 366 withAll: 0]) copy]
private
checkIfNewYear

	(Date today year = (self year + 1)) ifTrue:
		[self yearlyHistory
			at: self year
			put: self dailyCounts.
		self initDailyCounts.
		self year: Date today year].
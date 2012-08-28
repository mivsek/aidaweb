adding-removing
at: aDate subtract: aValue
	self existCheckDate: aDate.
	^self days at: aDate asDays put: (self at: aDate) - aValue
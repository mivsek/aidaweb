adding-removing
at: aDate put: aValue
	self existCheckDate: aDate.
	^self days at: aDate asDays put: aValue
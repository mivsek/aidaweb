adding-removing
at: aDate add: aValue 
	self existCheckDate: aDate.
	^self days at: aDate asDays put: (self at: aDate) + aValue
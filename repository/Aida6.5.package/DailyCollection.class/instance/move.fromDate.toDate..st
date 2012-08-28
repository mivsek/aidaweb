adding-removing
move: anObject fromDate: aDate toDate: aNewDate
	| collection |
	collection := self days at: aDate asDays.
	collection remove: anObject.
	self add: anObject onDate: aNewDate
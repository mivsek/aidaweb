adding-removing
add: newObject onDate: aDate
	(self includes: newObject onDate: aDate) ifTrue: [^nil].
	self existCheckDate: aDate.
	(self days at: aDate asDays) add: newObject.
	^newObject
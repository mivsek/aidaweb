adding-removing
addLast: newObject inYear: aYear
	"put in first place at 1st jan of this year"
	| date |
	date := SpDate newDay: 31 month: 12 year: aYear.
	(self includes: newObject onDate: date) ifTrue: [^nil].
	self existCheckDate: date.
	(self days at: date asDays) addLast: newObject.
	^newObject
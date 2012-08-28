adding-removing
addFirst: newObject inYear: aYear
	"put in first place at 1st jan of this year"
	| date |
	date := SpDate newDay: 1 month: 1 year: aYear.
	(self includes: newObject onDate: date) ifTrue: [^nil].
	self existCheckDate: date.
	(self days at: date asDays) addFirst: newObject.
	^newObject
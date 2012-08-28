accessing
currentWeekCounts
	"counts for every day in current week"
	| firstDay collection |
	firstDay := SpDate today subtractDays: SpDate today weekdayIndex + 1.
	collection := OrderedCollection new.
	firstDay asDays to: firstDay asDays + 6 do: [:days |
		collection add: (self countsOnDate: (SpDate fromDays: days))].
	^collection
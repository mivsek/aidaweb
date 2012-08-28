adding-removing
remove: oldObject onDate: aDate
	"remove if exist on that date, otherwise return nil"
	| collection |
	collection := self days at: oldObject date asDays ifAbsent: [^nil].
	collection remove: oldObject ifAbsent: [^nil].
	^oldObject
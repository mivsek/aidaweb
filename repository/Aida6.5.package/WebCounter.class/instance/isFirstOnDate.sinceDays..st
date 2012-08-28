testing
isFirstOnDate: aDate sinceDays: nrOfDays
	"a first/new count since specified nr of days, when there were no counts"
	| since current |
	current := aDate day.
	since := (day - nrOfDays) max: 1. "well what about first 7 days in new year?"
	(self dailyCounts at: current) = 0 ifTrue: [^false].
	since to: current-1 do: [:d | (self dailyCounts at: d) > 0 ifTrue: [^false] ].
	^true
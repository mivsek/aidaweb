views-elements
currentWeekStats
	| firstDay collection |
	firstDay := Date today - Date today weekdayIndex + 1.
	collection := OrderedCollection new.
	firstDay to: firstDay + 6 do: [:dte |
		collection add: (self site requestsOnDate: dte)].
	^collection
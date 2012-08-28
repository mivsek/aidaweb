accessing
countsFrom: aStartDate to: anEndDate

	| collection |
	collection := OrderedCollection new.
	aStartDate asDays to: anEndDate asDays do: [:days | 
		collection add: (self countsOnDate: (SpDate fromDays: days))].
	^collection
accessing
allFromDate: aStartDate to: anEndDate

	| collection |
	collection := OrderedCollection new: 100.
	aStartDate to: anEndDate do: [:date |
		collection add: (self at: date) ].
	^collection
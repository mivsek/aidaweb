private
lastDateFrom: aDate
	"search back in time for some date on which a value exist and return that date"
	| start |
	start := aDate asDays.
	self days keys asSortedCollection reverse do:  "not very optimized way for big colections! "
		[:day | day <= start ifTrue: [^Date fromDays: day] ].
	^nil
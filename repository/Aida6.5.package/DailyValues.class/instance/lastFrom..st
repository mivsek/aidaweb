private
lastFrom: aDate
	"search back in time for some date on which a value exist and return it"
	| start |
	start := aDate asDays.
	self days keys asSortedCollection reverse do:  "not very optimized way for big colections! "
		[:day | day <= start ifTrue: [^self days at: day] ].
	^nil
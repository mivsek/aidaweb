testing
includes: anObject onDate: aDate
	| values |
	values := self days at: aDate asDays ifAbsent: [^false].
	^values includes: anObject
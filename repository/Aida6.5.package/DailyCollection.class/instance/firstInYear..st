accessing
firstInYear: aYear
	"on 1st january of that year"
	| col |
	col := self firstDayInYear: aYear.
	col isEmpty ifTrue: [^nil].
	^col first
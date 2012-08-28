accessing
countsOnDate: aDate

	| counts |
	counts := self allCountsInYear: aDate year.
	^counts at: aDate day
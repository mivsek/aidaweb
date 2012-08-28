private
incDailyCounterOnDate: aDate
	aDate year = self year 
		ifTrue: 
			[self dailyCounts at: aDate day put: (self  dailyCounts at: aDate day) + 1]
		ifFalse:
			[self checkIfNewYear.
			self incHistoryCounterOnDate: aDate].
private
yearlyHistory
	yearlyHistory isNil ifTrue: [self initYearlyHistory].
	^yearlyHistory
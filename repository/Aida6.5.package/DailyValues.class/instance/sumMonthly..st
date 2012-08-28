accessing
sumMonthly: aDate

	^(self allMonthly: aDate)
		inject: 0
		into: [:sum :each | sum + each]
accessing
sumWeekly: aDate

	^(self allWeekly: aDate)
		inject: 0
		into: [:sum :each | sum + each]
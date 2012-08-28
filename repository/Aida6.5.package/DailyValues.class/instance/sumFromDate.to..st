accessing
sumFromDate: aStartDate to: anEndDate

	^(self allFromDate: aStartDate to: anEndDate)
		inject: 0
		into: [:sum :each | sum + each]
accessing
weekly
	"total count in current week"
	^self currentWeekCounts inject: 0 into: [:sum :each | sum + each]
statistics-counters
allPagesThisWeek
	"all page requests in current week"
	^self pagesCounter currentWeekCounts
		inject: 0 into: [:sum :each | sum + each]
accessing
yesterday
	"return number of requests yesterday"
	^self countsOnDate: (SpDate today subtractDays: 1)
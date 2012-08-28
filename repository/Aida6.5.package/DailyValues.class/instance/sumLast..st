accessing
sumLast: aNumber
	"sum values of aNumber of days, starting from today and back"

	^(self last: aNumber)
		inject: 0
		into: [:sum :each | sum + each]
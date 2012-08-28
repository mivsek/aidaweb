private-history arrays
dateFromArray: anArray

	"return a date from entries in history array"

	^Date
		newDay: (anArray at: 2)
		year: (anArray at: 1)
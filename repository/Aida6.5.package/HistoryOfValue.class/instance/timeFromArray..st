private-history arrays
timeFromArray: anArray

	"return a time from entries in history array"

	^Time fromSeconds: (anArray at: 3)
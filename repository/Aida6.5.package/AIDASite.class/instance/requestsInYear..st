statistics-counters
requestsInYear: aYearNumber
	"return a number of requests on specified year"

	| count |
	count := 0.
	((self counters at: #Daily) at: aYearNumber ifAbsent: [^0]) do: [:dayCount |
		count := count + dayCount].
	^count
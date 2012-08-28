counting
countRequest: aWebRequest

	"register a request by incrementing daily, hourly and total counter."

	self incCounterOnTimestamp: aWebRequest timestamp
log analysis
convertFromGMT: aTimestamp

	"IIS logs have time in GMT timezone. Return local time"
	TimeZone reference
		convertGMT: aTimestamp asSeconds
		do: [:date :sec | 	^Timestamp fromDate: date andTime: (Time fromSeconds: sec)]
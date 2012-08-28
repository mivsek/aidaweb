*Aida
sendOver: aStream 
	"from Wiki rendering"
	self printOn: aStream
"
	TimestampPrintPolicy 
		print: (TimeZone default convertToGMT: self asSeconds
				do: [:date :seconds | Timestamp fromDate: date andTime: (Time fromSeconds: seconds)])
		on: aStream
		using: 'ddd, dd mmm yyyy hh:mm:ss GMT'
"
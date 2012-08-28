counting
incCounterOnTimestamp: aTimestamp

	"increment daily, hourly and total counter with date and time defined"

	
	self incDailyCounterOnDate: aTimestamp asDate.
	self incHourlyCounterOnTimestamp: aTimestamp.
	self incTotal.
private
isHourlySnapshot
	"Shall snapshot image every hour? Yes by default"
	HourlySnapshot isNil ifTrue: [self setHourlySnapshot].
	^HourlySnapshot
private
shallSnapshot
	"yes, if allowed and if there were no snapshot last 5 minutes"
	self isHourlySnapshot ifFalse: [^false].
	^(SpTimestamp now asSeconds - self lastSnapshot asSeconds) > (5*60)
private
shallPreSnapshot
	"yes, if allowed and if there were no presnapshot last 5 minutes"
	self isHourlySnapshot ifFalse: [^false].
	^(SpTimestamp now asSeconds - self lastPreSnapshot asSeconds) > (5*60)
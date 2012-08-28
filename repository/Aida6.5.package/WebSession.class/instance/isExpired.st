testing
isExpired
	"more than 15min of inactivity"
	self lastRequest isNil ifTrue: [^false].
	^(SpTimestamp now asSeconds - self lastRequest timestamp asSeconds) > (15*60)
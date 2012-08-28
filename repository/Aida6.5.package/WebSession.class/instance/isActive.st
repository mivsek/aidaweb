testing
isActive

	"active if at least one request received last hour"

	self lastRequest isNil ifTrue: [^false].
	^(SpTimestamp now asSeconds - self lastRequest timestamp asSeconds) < 3600
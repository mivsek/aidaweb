statistics
isActive
	"there was some activity (requests served) on this site in last hour"
	self lastRequestTimestamp isNil ifTrue: [^false].
	^self lastRequestTimestamp asSeconds > (SpTimestamp now asSeconds - 3600)
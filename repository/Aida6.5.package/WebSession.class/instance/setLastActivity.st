private
setLastActivity
	"set the last activity (request) timestamp"
	^self otherAt: #lastActivityTimestamp put: SpTimestamp now
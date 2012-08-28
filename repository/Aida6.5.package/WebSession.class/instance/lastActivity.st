accessing-other
lastActivity
	"the last activity (request) timestamp"
	^self otherAt: #lastActivityTimestamp ifAbsent: [nil]
private-events
afterCloseUpdate
	"For later update, like after window close"
	^self otherAt: #afterCloseUpdate ifAbsent: [nil]
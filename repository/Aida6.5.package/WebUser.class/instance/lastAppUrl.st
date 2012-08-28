accessing-other
lastAppUrl
	"an url which last WebApplication was called. "
	^self otherAt: #LastAppUrl ifAbsent: [nil].
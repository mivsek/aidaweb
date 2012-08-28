accessing-other
lastAppUrl: aString
	"an url which last WebApplication was called. It is set AFTER the app view is generated!"
	^self otherAt: #LastAppUrl put: aString
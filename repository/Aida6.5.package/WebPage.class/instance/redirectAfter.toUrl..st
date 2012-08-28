redirects
redirectAfter: aSecondsNumber toUrl: aString
	"redirection or refresh of specified url, does not work on Mozilla! "
	self addHeader: 'meta' value: 'http-equiv="REFRESH"  content="', 
		aSecondsNumber printString, '; url=', aString, '" '
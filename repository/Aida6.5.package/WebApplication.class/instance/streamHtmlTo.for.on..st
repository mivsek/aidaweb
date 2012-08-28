private-composing
streamHtmlTo: aStream for: aRequest on: aSession
	"For apps we print a window of currently executing context"
	^aRequest context page streamHtmlTo: aStream for: aRequest on: aSession.
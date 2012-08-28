private
streamHtmlTo: aStream for: aRequest on: aSession
	self prepareTabsList.
	^super streamHtmlTo: aStream for: aRequest on: aSession
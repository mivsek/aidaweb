accessing
browserString
	"return the string, whick browser sends as identification in a web request"
	self lastRequest isNil ifTrue: [^''].
	^self lastRequest userAgent.
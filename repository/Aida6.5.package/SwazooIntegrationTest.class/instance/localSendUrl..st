private
localSendUrl: aString
	"sends request with that RELATIVE url to the site localy - it simulates a real network request. "
	| request httpServer |
	request := Swazoo.HTTPRequest request: aString from: self siteHost at: self siteIP.
	request uri port: self sitePort.
	httpServer := server servers asOrderedCollection first.
	^httpServer answerTo: request
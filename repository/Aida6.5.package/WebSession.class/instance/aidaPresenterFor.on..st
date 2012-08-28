private-serving
aidaPresenterFor: aRequest on: aSession
	| event |
	aRequest isWebSocketRequest ifTrue: 
		["Transcript cr; show: '** new WebSocket on ', self site name ,' from ', aRequest peer. "
		^self]. "upgrade to WebSocket request on /aidasession/websocket, see printHTMLPage.."
	 '/aidasession/comet' = aRequest uriString ifTrue: 
		[^self realtimeHandler respondToCometRequest: aRequest].
	('/aidasession/element-*' match: aRequest uriString) ifTrue: 
		[^self respondToElementDirectRequest: aRequest].  "direct Ajax request to some element of a webpage"
"	aRequest uriString = '/aidasession/ajax' ifFalse: 
		[(Delay forSeconds: 1) wait. ^self]. "  "WebSocket over Squid proxy troubles!"
	aRequest isPost not ifTrue: [^WebPage new]. "JSON msg is in body of post request"
	event := WebEvent fromJSON: (aRequest ensureFullRead; entityBody) on: aSession.
	(event context notNil and: [event element notNil]) ifTrue:
		[event app respondToEvent: event].
	"next, streaming step occurs in printHTMLPageOnfor:to: "
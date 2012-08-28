private-serving
streamHtmlTo: aStream for: aRequest on: aWebSession
	| url |
	url := aRequest urlString readStream upTo: $? .
	url = '/aidasession/ajax' ifTrue:    "Ajax response with JSON commands"
		[^self streamAjaxResponseOn: aStream for: aRequest on: aWebSession]. 
	url = '/aidasession/websocket' ifTrue:   "upgrade to WebSocket request"
		[^self realtimeHandler streamWebSocketOn: aStream for: aRequest on: aWebSession]. 
	url = '/aidasession/comet' ifTrue:   "long polling Ajax Comet"
		[^self realtimeHandler streamCometOn: aStream for: aRequest on: aWebSession]. 
	url = '/aidasession/geolocation' ifTrue:   "geolocation of browser received"
		[self setGeolocationFrom: aRequest.
		^self streamEmptyResponseOn: aStream for: aRequest on: aWebSession]. 
	^self error: 'unknown request'.
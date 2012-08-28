handling-websocket
streamWebSocketOn: aStream for: aRequest on: aWebSession
	"For web socket to become connected as bidirectional channel to browser"
	| realtimeConn response |
	aRequest isWebSocketRequest ifFalse: [^HTTPResponse forbidden].
	"put authorization check here! "
	realtimeConn := WebRealtimeConnection newWebSocketOn: self from: aRequest.
	self cleanup; add: realtimeConn.
	response := realtimeConn connection answerTo: aRequest.
	aStream nextPutAll:  response body asString. "because of postprocessing on 
												  AIDASite answerToGetOrPost:on:"
	aRequest task response become: response. "switch with a preprepared response"
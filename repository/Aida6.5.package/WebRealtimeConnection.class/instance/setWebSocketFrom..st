handling-websocket
setWebSocketFrom: aRequest
	self connection: aRequest webSocket.
	self setAppAndViewFrom: aRequest.
	self connection receiveBlock: [:msg | self respondToWebSocketMessage: msg].
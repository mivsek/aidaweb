handling-websocket
webSocketConnections
	"open WebSocket connections"
	^self connections select: [:each | each isWebSocket ]
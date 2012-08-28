instance creation
newWebSocketOn: aWebRealtimeHandler from: aRequest
	^super new
		type: #websocket;
		handler: aWebRealtimeHandler;
		setWebSocketFrom: aRequest
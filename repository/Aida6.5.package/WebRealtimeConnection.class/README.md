WebRealtimeConnection holds information about browser connection to send commands in realtime. It can be WebSocket or long-polling Comet (Ajax call which delays response until something is to send back)

Instance Variables
	type	<Symbol>	#comet or #websocket
	handler <WebRealtimeHandler>
	connection <HTTPCoonnection or WebSocketConnection>
	app	<WebAplication>	 in which App this realtime connection is open
	view	<Symbol>	on which App view
	semaphore	<Semaphore>	for long-polling Comet to wait on
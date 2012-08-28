handling-websocket
respondToWebSocketMessage: aString
	"respondss to webSocekt messages"
	"Intialized as webSocket's receiveBlock in streamWebSocketOn:for:on: "
	| event |
	[event := WebEvent fromJSON: aString on: self session.
	event app respondToEvent: event]
		on: Error
		do: [:exception | 
			"self handler site reportException: exception. "
			"exception defaultAction"]
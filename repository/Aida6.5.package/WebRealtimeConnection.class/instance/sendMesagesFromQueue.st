handling
sendMesagesFromQueue
	"try to send messages to all open channels, depending on the target app on view of the connection"
	| msgs jsonString |
	msgs := self session queue select: [:msg | 
		msg app = self app and: [msg view = self view] ].
	msgs isEmpty ifTrue: [^nil].
	jsonString := self session packToJSONMessages: msgs.
	self connection send: jsonString.
	self session queue removeAll: msgs.
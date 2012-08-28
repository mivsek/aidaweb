serving
sendMesagesFromQueue
	"try to send messages to all open channels, depending on the target app on view of the connection"
	self cleanup. "remove all closed connections first"
	self connections do: [:conn | conn sendMesagesFromQueue] "also remove sent msgs from queue"
initialize-release
removeAll
	"close and remove all realtime connections"
	self connections copy do: [:conn | conn removeYourself]
private
setLastTimeAliveTimestamp
	"A lastTimeAliveThread sets this timestamp every minute"
	self critical: [
		self timestamps at: #LastTimeAlive put: SpTimestamp now asSeconds].
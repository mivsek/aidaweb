private
setLastRequestTimestamp
	"set the last web request timestamp to current date and time"
	self critical: [
		self timestamps at: #LastRequest put: SpTimestamp now asSeconds].
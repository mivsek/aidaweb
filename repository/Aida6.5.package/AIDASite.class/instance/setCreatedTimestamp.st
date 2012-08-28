private
setCreatedTimestamp
	"set the server creation timestamp to current date and time."
	self timestamps 
		at: #Created put: SpTimestamp now asSeconds.
private
setStartedTimestampCrashed: aBoolean
	"set the last server startup timestamp to current date and time.  
	Before that records old created and last alive timestamp to a running history.
	Argument shows if server was running, therefore crashed, or was stoped normaly"
	self addToRunningHistoryCrashed: aBoolean.
	self timestamps 
		at: #Started put: SpTimestamp now asSeconds.
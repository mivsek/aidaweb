private
addToRunningHistoryCrashed: aBoolean
	"Call it at server startup (in setStartedTimestamp). It reads old timestamps (started and
	last alive) and add it to the history" 
	| array |
	array := Array new: 3.
	array
		at: 1 put: self startedTimestamp asSeconds;
		at: 2 put: self lastTimeAliveTimestamp asSeconds;
		at: 3 put: aBoolean.  "true if server crashed"
	self runningHistoryCollection add: array.
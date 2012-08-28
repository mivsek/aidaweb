private-serving
notifyQueueAddition
	"to send added command immediatelly if some realtime channel is open, otherwise 
	wait for current or next request"
	self cleanupQueue. "of stalled commands like those on inactive apps or views"
	self realtimeHandler sendMesagesFromQueue. "and clear sent msgs from queue"
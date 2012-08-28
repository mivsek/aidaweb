start/stop
stop
	super stop.
	self stopServices.
	self setLastTimeAliveTimestamp.
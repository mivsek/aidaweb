start/stop
disable
	"this site is disabled and stopped, if not yet before. This site won't be started with SwazooServer start"
	self stop.
	self sessionManager
		removeGuestSessions;
		releaseApplicationState.
	^super disable
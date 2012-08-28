private
nightlyCleanup
	"releasing session application state and other cleanup"
	"AIDASite allInstances do: [:each | each nightlyCleanup] "
	self isEnabled ifFalse: [^nil]. "no need to cleanup disabled sites"
	Transcript cr; show: '*** Aida site ', self name, ' nightly cleanup'.
	HTTPConnection allInstances do: [:each | each close].  "to GC all streams and buffers"
	self sessionManager removeGuestSessions.
	self sessionManager releaseApplicationState.
	self statistics removeReferersJustOneHit.
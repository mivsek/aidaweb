accessing
setLastCommit

	"set the time of last real odb commit to time now"
	
	self localServers do: [:each | each setLastCommitTimestamp].
	self resetNotificationSent
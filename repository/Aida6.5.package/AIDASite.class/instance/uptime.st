statistics
uptime
	"return uptime of current server run in seconds (with 60s precision)"
	"AIDASite default uptime"
	^self lastTimeAliveTimestamp asSeconds - self startedTimestamp asSeconds
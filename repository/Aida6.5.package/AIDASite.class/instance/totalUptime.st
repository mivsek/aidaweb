statistics
totalUptime
	"return uptime of all server runs in seconds"
	"AIDASite default totalUptime"
	| history uptime |
	history := self runningHistory.
	uptime := 0.
	history do: [:array | uptime := uptime + (array at: 3)].
	^uptime
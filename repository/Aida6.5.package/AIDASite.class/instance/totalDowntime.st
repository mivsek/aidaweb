statistics
totalDowntime
	"return downtime between all server runs in seconds"
	"AIDASite default totalDowntime"
	| history downtime |
	history := self runningHistory.
	downtime := 0.
	history do: [:array | downtime := downtime + (array at: 4)].
	^downtime
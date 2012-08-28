statistics
availability
	"return server availability from first run in %"
	"AIDASite default availability"
	| uptime downtime |
	uptime := self totalUptime.
	downtime := self totalDowntime.
	^((uptime / ((uptime + downtime) max: 1)) * 100) asScaledDecimal: 2
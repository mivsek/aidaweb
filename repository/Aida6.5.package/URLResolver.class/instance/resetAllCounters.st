request counting
resetAllCounters

	self counters values do: [:each | each reset].

"URLResolver default resetAllCounters"
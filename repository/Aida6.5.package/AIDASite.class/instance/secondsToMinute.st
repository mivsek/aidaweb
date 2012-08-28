statistics-counters
secondsToMinute

	| now | 
	now := Time now asSeconds.
	^(60 - (now - (now // 60 * 60))) max: 0

"WebServer default secondsToMinute"
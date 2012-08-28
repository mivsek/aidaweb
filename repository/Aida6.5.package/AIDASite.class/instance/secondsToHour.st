statistics-counters
secondsToHour

	| now | 
	now := Time now asSeconds.
	^(3600 - (now - (now // 3600 * 3600))) max: 0

"WebServer default secondsToHour"
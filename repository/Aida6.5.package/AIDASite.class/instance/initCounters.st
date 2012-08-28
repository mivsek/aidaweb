private-counters
initCounters
	"counters of web requests: total and by year/day of year"
	self critical: 
		[counters := IdentityDictionary new.
		self pagesCounter.
		self totalCounter.
		self newVisitorsCounter.
		self returningVisitorsCounter.
		self notFoundCounter].

"WebServer default initCounters"
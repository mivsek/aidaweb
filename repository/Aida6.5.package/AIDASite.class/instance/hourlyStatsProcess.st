statistics-counters
hourlyStatsProcess

	"hourly report to transcript"
	"WebServer default hourlyStatsProcess"
	| hits pages new returning afterHits afterPages afterNew afterReturning |
	[
		hits := self totalCounter total.
		pages := self pagesCounter total.
		new :=	self newVisitorsCounter total.
		returning := self returningVisitorsCounter total.
		(Delay forSeconds: self secondsToHour) wait.
		[self isServing] whileTrue: 
			[afterHits := self totalCounter total.
			afterPages := self pagesCounter total.
			afterNew := self newVisitorsCounter total.
			afterReturning := self returningVisitorsCounter total.
			Transcript cr; show: '***'; cr; show:
				'***  ',  self name, ' ', 
				Time now hours printString, ':', Time now minutes printString, ' ',
				'    last hour hits: ', (afterHits - hits) printDotString, 
				'    pages: ', (afterPages - pages) printDotString, 
				'    visitors new: ', (afterNew - new) printDotString, 
				'    returning: ', (afterReturning - returning) printDotString;
				cr; show: '***'.
			self registerTopHourHits: (afterHits - hits) pages: (afterPages - pages).
			hits := afterHits. pages := afterPages.
			new := afterNew. returning := afterReturning.
			(Delay forSeconds: self secondsToHour) wait].
	] fork.
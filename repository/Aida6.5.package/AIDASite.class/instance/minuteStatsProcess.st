statistics-counters
minuteStatsProcess

	"every minute report to transcript"
	"WebServer default minuteStatsProcess"
	| hits pages new returning afterHits afterPages afterNew afterReturning |
	[
		hits := self totalCounter total.
		pages := self pagesCounter total.
		new :=	self newVisitorsCounter total.
		returning := self returningVisitorsCounter total.
		(Delay forSeconds: self secondsToMinute) wait.
		[self isServing] whileTrue: 
			[afterHits := self totalCounter total.
			afterPages := self pagesCounter total.
			afterNew := self newVisitorsCounter total.
			afterReturning := self returningVisitorsCounter total.
			Transcript cr; show: 
				self name, ' ', 
				Time now hours printString, ':', Time now minutes printString, ' ',
				'    last minute hits: ', (afterHits - hits) printDotString, 
				'    pages: ', (afterPages - pages) printDotString, 
				'    visitors new: ', (afterNew - new) printDotString, 
				'    returning: ', (afterReturning - returning) printDotString.
			self registerTopMinuteHits: (afterHits - hits) pages: (afterPages - pages).
			hits := afterHits. pages := afterPages.
			new := afterNew. returning := afterReturning.
			(Delay forSeconds: self secondsToMinute) wait].
	] fork.
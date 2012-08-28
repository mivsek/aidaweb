statistics-counters
registerTopHourHits: aHitNumber pages: aPageNumber
	(self topHour at: 2) < aHitNumber ifTrue: 
		[self topHour
			at: 1 put: Timestamp now;
			at: 2 put: aHitNumber;
			at: 3 put: aPageNumber].
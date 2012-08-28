statistics-counters
registerTopMinuteHits: aHitNumber pages: aPageNumber
	(self topMinute at: 2) < aHitNumber ifTrue: 
		[self topMinute
			at: 1 put: Timestamp now;
			at: 2 put: aHitNumber;
			at: 3 put: aPageNumber].
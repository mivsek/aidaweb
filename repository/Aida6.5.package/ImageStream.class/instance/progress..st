progress
progress: normalizedNumber 
	(0 <= normalizedNumber and: [normalizedNumber <= 1])
		ifTrue: 
			[| truncatedValue |
			truncatedValue := normalizedNumber roundTo: 0.005.
			self progressValue value = truncatedValue ifFalse: [self progressValue value: truncatedValue]]
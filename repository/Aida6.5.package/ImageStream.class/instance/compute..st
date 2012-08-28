progress
compute: aBlock 
	(self progressValue isKindOf: ValueHolder)
		ifTrue: [self progressValue compute: aBlock]
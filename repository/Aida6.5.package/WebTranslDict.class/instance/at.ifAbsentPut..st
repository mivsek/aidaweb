accessing
at: key ifAbsentPut: aBlock
	^self at: key ifAbsent: [self initialAt: key put: aBlock value]
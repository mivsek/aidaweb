private-building
filterRows
	| columnsToFilter | 
	columnsToFilter := self columns select: [:each | each isFilterEntered]. 
	self filtered removeAll; addAll: 
		(columnsToFilter notEmpty
			ifTrue: [(self collection select: [:object | 
				self canFilterObject: object onColumns: columnsToFilter])] 
			ifFalse: [self collection])
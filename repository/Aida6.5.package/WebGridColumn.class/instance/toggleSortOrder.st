settings
toggleSortOrder
	self parent sortColumn == self id
		ifTrue: [self parent sortOrder == #descending
			ifTrue: [self sortAscending]
			ifFalse: [self sortDescending]]
		ifFalse: [self sortAscending]
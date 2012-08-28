settings
sort
	self parent sortColumn == self id
		ifTrue: [self toggleSortOrder]
		ifFalse: [self sortAscending]
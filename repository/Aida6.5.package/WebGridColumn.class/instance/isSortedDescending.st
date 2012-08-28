testing
isSortedDescending
	^(self parent sortColumn = self id) and: [self parent sortOrder = #descending]
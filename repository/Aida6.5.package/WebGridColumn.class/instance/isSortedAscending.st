testing
isSortedAscending
	^(self parent sortColumn = self id) and: [self parent sortOrder = #ascending]
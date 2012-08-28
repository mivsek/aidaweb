private
cell: aWebTableCell
	self initTableIfNessesary.
	self otherAt: #currentCell put: aWebTableCell.
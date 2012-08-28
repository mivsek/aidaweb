private
row: aWebTableRow
	self initTableIfNessesary.
	self otherAt: #currentRow put: aWebTableRow.
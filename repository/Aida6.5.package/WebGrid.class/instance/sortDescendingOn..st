settings-column
sortDescendingOn: aColumnId
	"this column will be sorted ascending"
	self sortColumn: aColumnId.
	self sortOrder: #descending
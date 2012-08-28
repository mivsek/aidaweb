settings-column
sortAscendingOn: aColumnId
	"this column will be sorted ascending"
	self sortColumn: aColumnId.
	self sortOrder: #ascending
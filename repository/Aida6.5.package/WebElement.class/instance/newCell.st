tables
newCell
	"add a new cell to current table row. Return a new WebTableCell so that you can send messages
	to it immediatelly - color, width, addText etc."
	self cell: WebTableCell new.
	self row add: self cell.
	^self cell
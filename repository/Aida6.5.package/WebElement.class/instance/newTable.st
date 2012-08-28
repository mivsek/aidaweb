tables
newTable
	"add a new table to this element. Return a new WebTable so that you can send messages
	to it immediatelly - color, width etc. Also reset current row and current cell to a new ones. "
	self table: WebTable new.
	self add: self table.
	self newRow.
	^self table
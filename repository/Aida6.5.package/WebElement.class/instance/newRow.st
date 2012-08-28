tables
newRow
	"add a new row to current table. Return a new WebTableRow so that you can send messages
	to it immediatelly - color, width etc. Also reset current row and current cell to a new ones. "
	self row: WebTableRow new.
	self table add: self row.
	self newCell.
	^self row
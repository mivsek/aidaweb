private-adding-removing
removeIndex: aNumber
	"remove all entries on specified index"
	self dates removeIndex: aNumber.
	self values removeIndex: aNumber.
	self changedDates removeIndex: aNumber.
	self authors removeIndex: aNumber.
	self comments removeIndex: aNumber.
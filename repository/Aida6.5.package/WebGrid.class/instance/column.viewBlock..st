settings-column
column: aColumnId viewBlock: aBlock
	"this block will be called with current row object as an argument. It must return plain string!"
	self columns size < aColumnId ifTrue: [self addNewColumn]. "?"
	(self columns at: aColumnId) viewBlock: aBlock
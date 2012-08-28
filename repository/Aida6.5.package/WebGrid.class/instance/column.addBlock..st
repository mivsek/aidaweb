settings-column
column: aColumnId addBlock: aBlock
	"this block will be called with current row object as an argument. 
	It must return kind of WebElement which will be added to the table cell"
	self columns size < aColumnId ifTrue: [self addNewColumn].
	(self columns at: aColumnId) addBlock: aBlock
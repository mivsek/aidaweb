private-subelements
newSubelementTag: aTagSymbol
	"add and immediatelly return a new structural element with that tag. It remembers it, later can 
      be found with a method, like #div" "The same princliple as for tables: newTable, newCell, cell, .."
	self subelement: (WebElement new tag: aTagSymbol).
	self add: self subelement.
	^self subelement
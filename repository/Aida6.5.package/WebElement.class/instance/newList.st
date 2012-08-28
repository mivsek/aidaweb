subelements
newList
	"add and immediatelly return a new list (<ul> by default, send #ordered for <ol>). I remember it, later can be found 
	with #list"
	"The same as for tables: newTable, table, newCell, cell, .."
	self subelement: (WebList new unordered).
	self add: self subelement.
	^self subelement
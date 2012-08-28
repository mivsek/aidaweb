private-subelements
subelementTag: aTagSymbol
	"Return a current subelement if it is of that tag. Create it if not yet exist"
	"The same principle as for tables: newTable, newCell, cell, .."
	self subelement ifNil: [^self newSubelementTag: aTagSymbol].
	self subelement tag ~= aTagSymbol ifTrue: [self error: 'Current subelement is not of desired tag'].
	^self subelement
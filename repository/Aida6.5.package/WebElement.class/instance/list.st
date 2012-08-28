subelements
list
	"Return a current list (<ul> by default) subelement if it is of that tag, error otherwise. Create it if not yet exist"
	self subelement ifNil: [^self newList].
	self subelement class == WebList ifFalse: [self error: 'Current subelement is not of desired tag'].
	^self subelement
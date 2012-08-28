settings-column
columnFilters: anArrayOfBooleanOrNumbers
	"row with filter input fields, put true or field width on a column to add filter"
	| inx |
	inx := 1.
	anArrayOfBooleanOrNumbers do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		each notNil ifTrue: [(self columns at: inx) setFilter].
		(each notNil and: [each class ~= True "but number"])  
			ifTrue: [(self columns at: inx) filterWidth: each].
		inx := inx + 1]
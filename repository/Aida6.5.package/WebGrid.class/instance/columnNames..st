settings-column
columnNames: anArrayOfStrings
	"set names of columns to be shown in header of table"
	| inx |
	inx := 1.
	anArrayOfStrings do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) name: each.
		inx := inx + 1]
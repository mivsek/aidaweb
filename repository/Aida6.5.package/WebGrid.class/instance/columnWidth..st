settings-column
columnWidth: anArrayOfNumbers
	"width of column or nil."
	| inx |
	inx := 1.
	anArrayOfNumbers do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) width: each.
		inx := inx + 1]
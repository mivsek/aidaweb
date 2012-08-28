settings-column
columnAspects: anArrayOfSymbols
	"methods to be called for each column on every object in collection"
	| inx |
	inx := 1.
	anArrayOfSymbols do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) aspect: each.
		inx := inx + 1]
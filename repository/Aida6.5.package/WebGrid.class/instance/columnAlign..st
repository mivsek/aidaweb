settings-column
columnAlign: anArrayOfSymbols
	"#left #right #center, nil if default left is used"
	| inx |
	inx := 1.
	anArrayOfSymbols do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) align: each.
		inx := inx + 1]
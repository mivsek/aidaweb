settings-row
summaryRow: anArrayOfSymbolsOrStrings
	"if you want a summary row, define for desired column: #sum, #count or 'some text' "
	| inx |
	inx := 1.
	anArrayOfSymbolsOrStrings do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) summaryType:  each.
		inx := inx + 1]
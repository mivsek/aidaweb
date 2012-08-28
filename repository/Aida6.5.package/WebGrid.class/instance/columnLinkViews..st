settings-column
columnLinkViews: anArrayOfSymbols
	"link to an aspect of object(if set with columnLinks:, otherwise to object itself) with a view 
	will be shown in thi column"
	| inx |
	inx := 1.
	anArrayOfSymbols do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) linkView:  each.
		inx := inx + 1]
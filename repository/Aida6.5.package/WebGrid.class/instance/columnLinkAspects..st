settings-column
columnLinkAspects: anArrayOfSymbols
	"url link to an aspects of an object. Specify views with separate columnLinkViews: method"
	| inx |
	inx := 1.
	anArrayOfSymbols do: [:each |
		self columns size < inx ifTrue: [self addNewColumn].
		(self columns at: inx) linkAspect:  each.
		inx := inx + 1]
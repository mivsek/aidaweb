private
prepareTabsList
	| app inx view linkTarget |
	app := self app.  inx := 1. 
      view := app view. view = #'' ifTrue: [view := #main].
	linkTarget := app isStandaloneApp ifTrue: [app class] ifFalse: [app observee].
	self views do: [:each | 
		view = each key | ((each value at: 2) includes: view)
			ifTrue: 
				[self addLinkTo: linkTarget text: (each value at: 1) view: each key.
				self selected: inx]
"		 	ifTrue: [self addTextBold: (each value at: 1). self selected: inx] "
			ifFalse: [self addLinkTo: linkTarget text: (each value at: 1) view: each key].
		inx := inx + 1]
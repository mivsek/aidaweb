accessing
selectedClasses
	selectedClasses isNil ifTrue: [self selectedClasses: OrderedCollection new].
	^selectedClasses
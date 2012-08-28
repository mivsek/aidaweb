initialize-release
initFiltered
	filtered isNil 
		ifTrue: [filtered := OrderedCollection new]
		ifFalse: [filtered removeAll]
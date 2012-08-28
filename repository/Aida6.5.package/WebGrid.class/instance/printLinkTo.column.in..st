private-building
printLinkTo: anObject column: aColumn in: anElement
	| view object linkText |
	view := aColumn linkView notNil ifTrue: [aColumn linkView] ifFalse: [#main].
	object := aColumn linkAspect notNil 
		ifTrue: [anObject perform: aColumn linkAspect] ifFalse: [anObject].
	linkText := (self startTagFor: anObject), (aColumn viewBlock value: anObject), 
		(self endTagFor: anObject).
	object notNil
		ifTrue: [anElement addLinkTo: object text: linkText view: view]
		ifFalse: [anElement addText: linkText]
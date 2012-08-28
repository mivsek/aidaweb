*Aida
moveUp: anElement
	"move that element up (before current position) in a collection"
	| inx |
	(self notEmpty and: [self first = anElement]) ifTrue: [^self].
	inx := self indexOf: anElement.
	self add: anElement beforeIndex: inx-1.
	self removeAt: inx+1
	"#(1 2 3) asOrderedCollection moveUp: 3"
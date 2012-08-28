*Aida
moveDown: anElement
	"move that element down (after current position) in a collection"
	| inx |
	(self notEmpty and: [self last = anElement]) ifTrue: [^self].
	inx := self indexOf: anElement.
	self add: anElement beforeIndex: inx+2.
	self removeAt: inx
	"#(1 2 3) asOrderedCollection moveDown: 1"
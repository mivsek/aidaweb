events-ajax
onMouseOverUpdate: anElement with: anArgObject
	"update a specified element from server wtih calling an element method with an argument"
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	self onMouseOver: 
		(self scriptForEvent: #mouseOver context: self context).
	(self eventHandlerFor: #mouseOver) 
		addUpdate: anElement with: anArgObject.
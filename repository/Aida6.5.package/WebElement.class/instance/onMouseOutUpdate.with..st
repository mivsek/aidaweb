events-ajax
onMouseOutUpdate: anElement with: anArgObject
	"update a specified element from server wtih calling an element method with an argument"
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	self onMouseOut: 
		(self scriptForEvent: #mouseOut context: self context).
	(self eventHandlerFor: #mouseOut) 
		addUpdate: anElement with: anArgObject.
events-ajax
onChangeUpdate: anElement
	"after field change update anElement on browser  "
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	self onChange: 
		(self scriptForEvent: #change context: self context).
	(self eventHandlerFor: #change) 
		addUpdate: anElement with: nil.
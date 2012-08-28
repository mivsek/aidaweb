events-ajax
onFocusUpdate: anElement with: anArgObject
	"after field gets focus, update anElement by calling its creation method with an argument "
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	self onFocus: 
		(self scriptForEvent: #focus context: self context).
	(self eventHandlerFor: #focus) 
		addUpdate: anElement with: anArgObject.
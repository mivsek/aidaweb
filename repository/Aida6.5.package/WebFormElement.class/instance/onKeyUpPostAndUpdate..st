events-ajax
onKeyUpPostAndUpdate: anElement
	"after  key up in a field, post input value to server and update anElement"
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	self setSingleFieldPost.   "so that field will actually be saved, otherwise change will be just announced"
	self onKeyUp: 
		(self scriptForEvent: #keyup context: self context).
	(self eventHandlerFor: #keyup)
		addAcceptPostedInput;
		addUpdate: anElement with: nil.
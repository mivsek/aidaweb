events-ajax
onKeyPressPostAndUpdate: anElement
	"after any key press in a field, post input value to server and update anElement"
	anElement isNil ifTrue: [self error: 'no element to update!'].
	anElement ensureId. 
	self setSingleFieldPost.   "so that field will actually be saved, otherwise change will be just announced"
	self onKeyPress: 
		(self scriptForEvent: #keypress context: self context).
	(self eventHandlerFor: #keypress)
		addAcceptPostedInput;
		addUpdate: anElement with: nil.
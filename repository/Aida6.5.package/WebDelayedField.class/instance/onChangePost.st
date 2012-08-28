events-ajax
onChangePost
	"on key up, not on change we send a #change event with a delay after last event! "
	self setSingleFieldPost.   "so that field will actually be saved, otherwise change will be just announced"
	self onKeyUp: 
		(self scriptForEvent: #change context: self context). "script with delayed post!"
	(self eventHandlerFor: #change)
		addAcceptPostedInput
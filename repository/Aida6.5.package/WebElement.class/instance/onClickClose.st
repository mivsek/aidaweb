events-ajax
onClickClose
	"close the window if popup"
	self onClick: 
		(self scriptForEvent: #click context: self context).
	(self eventHandlerFor: #click) 
		addCloseWindow
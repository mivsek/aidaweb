events-ajax
onSubmitClose
	"Ajax submit then current window (if popup) is closed, its context also"
	self ajaxSubmit.
	(self eventHandlerFor: #submit) 
		addCloseWindow.
events-ajax
onChangeClose
	"Current window (if popup) is closed after element change, its context also"
	(self existScriptForEvent: #change) ifFalse:
		[self onChange: (self scriptForEvent: #change context: self context)].
	(self eventHandlerFor: #change) 
		addCloseWindow.
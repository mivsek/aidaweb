events-actions
onCloseDo: aBlock
	"execute that block when this widget is closed"
	"Triggered in WebEventHandler addCloseWindow block"
	(self eventHandlerFor: #close)  "close is pseudo event, not browser native"
		addActionBlock: aBlock.
actions
addPageUnload
	"unload event: page was closed or going to another one"
	^self addActionBlock:
		[:receivedEvent |
		receivedEvent context app 
			deactivateView: receivedEvent pageView]
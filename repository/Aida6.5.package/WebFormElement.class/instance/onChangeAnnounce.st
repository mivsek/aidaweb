private-events
onChangeAnnounce
	"field will be posted to server but not saved, just change will be announced to form"
	"Saved will be only if setSingleFieldPost was called before"
	(self existScriptForEvent: #change) ifFalse:
		[self onChange: (self scriptForEvent: #change context: self context)].
	(self eventHandlerFor: #change)
		addAcceptPostedInput
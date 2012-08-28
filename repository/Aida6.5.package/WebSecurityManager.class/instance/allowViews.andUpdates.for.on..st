access control
allowViews: viewSymbols andUpdates: updateSymbols for: aWebUserOrGroup on: anAppClass
	"those views and updates(actions) are allowed for that user or group on that App class"
	| viewRightSymbols updateRightSymbols |
	viewRightSymbols := viewSymbols collect: [:each | anAppClass viewRightSymbolFor: each].
	self setAccessRights: viewRightSymbols for: aWebUserOrGroup on: anAppClass name.
	updateRightSymbols := updateSymbols collect: [:each | anAppClass updateRightSymbolFor: each].
	self setAccessRights: updateRightSymbols for: aWebUserOrGroup on: anAppClass name.
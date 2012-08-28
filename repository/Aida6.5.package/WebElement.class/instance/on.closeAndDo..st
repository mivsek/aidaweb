events-actions
on: anEventSymbol closeAndDo: aBlock
	"first evaluate a block then close the current window (usually popup)"
	self on: anEventSymbol do: aBlock. 
	(self eventHandlerFor: anEventSymbol) 
		addCloseWindow.
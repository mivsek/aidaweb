events-actions
on: anEventSymbol do: aBlock
	"execute that block when this event occurs, like #click, #mouseOver etc."
	self 
		on: anEventSymbol 
		script: (self scriptForEvent: anEventSymbol context: self context).
	(self eventHandlerFor: anEventSymbol) 
		addActionBlock: aBlock.
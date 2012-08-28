events-actions
ifFalse: aBlock
	"run a block if answer is set to false when this widget is closed"
	self onCloseDo:
		[self context answer = false ifTrue: [aBlock value] ]
events-actions
ifTrue: aBlock
	"run a block if answer is set to true when this widget is closed"
	self onCloseDo:
		[self context answer = true ifTrue: [aBlock value] ]
events-actions
ifTrue: aTrueBlock ifFalse: aFalseBlock
	"run appropriate block if result is set to true or false when this widget is closed"
	self ifTrue: [aTrueBlock value].
	self ifFalse: [aFalseBlock value].
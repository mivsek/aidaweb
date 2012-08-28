events-actions
onAnswerDo: aBlock
	"if widget returns some answer on close, run that block with answer as an argument"
	self onCloseDo:
		[self context answer notNil ifTrue: 
			[aBlock value: self context answer] ]
actions
handleEvent: aWebEvent
	"Execute all action blocks in order and return result of the last. Result of last 
	action block should be a kind of WebElement"
	| result |
	self actionBlocks do: [:actionBlock | 
		result := actionBlock numArgs = 0 
			ifTrue: [actionBlock value]  "onClickDo: blocks have usually no argument"
			ifFalse: [actionBlock value: aWebEvent] ].
	^result  "only last result is returned, is that ok? "
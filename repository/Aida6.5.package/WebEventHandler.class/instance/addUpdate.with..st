actions
addUpdate: anElement with: anArgObject
	^self addActionBlock:
		[:receivedEvent |
		anElement updateWith: anArgObject] "if any (not nil)"
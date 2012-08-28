settings
cancelText
	| app |
	app := self app.
	^app notNil 
		ifTrue: [self app style inPlaceCancelText]
		ifFalse: ['Cancel']
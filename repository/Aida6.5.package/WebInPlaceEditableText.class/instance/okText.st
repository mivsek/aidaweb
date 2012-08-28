settings
okText
	| app |
	app := self app.
	^app notNil 
		ifTrue: [self app style inPlaceOkText]
		ifFalse: ['Ok']
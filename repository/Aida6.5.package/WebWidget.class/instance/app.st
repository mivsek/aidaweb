accessing
app
	"an App on which this widget is built"
	^self parent notNil 
		ifTrue: [self parent app]
		ifFalse: [self context app]
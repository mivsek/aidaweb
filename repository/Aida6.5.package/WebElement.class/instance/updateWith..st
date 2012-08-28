events-ajax
updateWith: anArgObject
	"recreate that element by calling cration method with one argument,
	and send to the browser to update itself there"
	anArgObject notNil ifTrue: [self updateArgument: anArgObject].
	^self update
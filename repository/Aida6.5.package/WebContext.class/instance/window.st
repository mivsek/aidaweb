accessing
window
	"a window (or web page) in which this context execute the request"
	window isNil ifTrue: [self initWindow].
	^window
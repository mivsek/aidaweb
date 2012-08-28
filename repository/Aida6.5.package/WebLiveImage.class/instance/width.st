accessing
width
	"width of image, default is 500 pixels"
	width isNil ifTrue: [self width: 500].
	^width
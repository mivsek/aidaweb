accessing
height
	"height of image, default is 300 pixels"
	height isNil ifTrue: [self height: 300].
	^height
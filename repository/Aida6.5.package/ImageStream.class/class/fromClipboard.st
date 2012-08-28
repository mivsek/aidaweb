accessing
fromClipboard
	"ImageStream show: ImageStream fromClipboard."

	| pixmap image |
	pixmap := Pixmap fromClipboard.
	image := pixmap asImage.
	^image
accessing
toClipboard: anImage 
	"ImageStream toClipboard: Image fromUser."

	| pixmap |
	pixmap := anImage asRetainedMedium.
	pixmap toClipboard.
	^anImage
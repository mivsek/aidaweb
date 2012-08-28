GIF89a
readExtension
	| label |
	label := self next.
	label == GraphicControlLabel
		ifTrue: [self readGraphicControlExtensionBlock]
		ifFalse: [self error: 'unsupported extension block']
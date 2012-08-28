GIF89a
writeGraphicControlExtensionBlock
	self nextPut: Extension.
	self nextPut: GraphicControlLabel.
	self nextPut: 4.
	transparentPixel notNil
		ifTrue: [self nextPut: 1]
		ifFalse: [self nextPut: 0].
	self nextPut: 0.
	self nextPut: 0.
	transparentPixel notNil
		ifTrue: [self nextPut: transparentPixel]
		ifFalse: [self nextPut: 0].
	self nextPut: 0
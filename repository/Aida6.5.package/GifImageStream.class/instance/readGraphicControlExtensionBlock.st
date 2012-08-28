GIF89a
readGraphicControlExtensionBlock
	| isTransparent |
	self next.
	isTransparent := (self next bitAnd: 1)
				= 1.
	self next: 2.
	isTransparent
		ifTrue: [transparentPixel := self next]
		ifFalse: [self next].
	self next
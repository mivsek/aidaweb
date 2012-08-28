encoding
writeHeader
	| byte array |
	self nextPutAll: 'GIF89a' asByteArray.
	self writeWord: width.
	self writeWord: height.
	byte := 128.
	byte := byte bitOr: (bitsPerPixel - 1 bitShift: 5).
	byte := byte bitOr: bitsPerPixel - 1.
	self nextPut: byte.
	self nextPut: 0.
	self nextPut: 0.
	array := self rgbIntegerArrayFor: colorPalette.
	array do: [:rgb | self nextPut: ((rgb bitShift: -16)
				bitAnd: 255); nextPut: ((rgb bitShift: -8)
				bitAnd: 255); nextPut: (rgb bitAnd: 255)].
	array size + 1 to: (1 bitShift: bitsPerPixel)
		do: [:i | self nextPut: 0; nextPut: 0; nextPut: 0].
	transparentPixel notNil ifTrue: [self writeGraphicControlExtensionBlock].
	self nextPut: ImageSeparator.
	self writeWord: 0.
	self writeWord: 0.
	self writeWord: width.
	self writeWord: height.
	byte := interlace
				ifTrue: [64]
				ifFalse: [0].
	self nextPut: byte
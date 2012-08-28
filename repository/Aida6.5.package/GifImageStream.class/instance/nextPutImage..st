accessing
nextPutImage: anImage 
	| theImage trueBitsPerPixel achievableBitsPerPixel bits |
	(anImage isKindOf: Image)
		ifFalse: [^self errorCanNotWrite].
	anImage bitsPerPixel > 8
		ifTrue: [theImage := anImage convertToPalette: self class colorPalette256 "renderedBy: ErrorDiffusion new"]
		ifFalse: [theImage := anImage].
	width := theImage width.
	height := theImage height.
	colorPalette := theImage palette.
	trueBitsPerPixel := theImage bitsPerPixel.
	achievableBitsPerPixel := 2 raisedTo: ((colorPalette size - 1) highBit - 1) highBit.
	bitsPerPixel := achievableBitsPerPixel.
	colorPalette := theImage palette.
	colorPalette paintBasis == CoverageValue
		ifTrue: 
			[transparentPixel := 0.
			colorPalette := self convertToMappedPalette: colorPalette].
	bits := theImage bits.
	trueBitsPerPixel < 8 ifTrue: [bits := self
					unpackBits: bits
					depthTo8From: bitsPerPixel
					width: theImage width
					height: theImage height
					pad: 32].
	interlace := true.
	
	[self writeHeader.
	self writeBitData: bits]
		valueNowOrOnUnwindDo: [self close].
	^theImage
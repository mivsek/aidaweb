accessing
nextPutImage: anImage 
	(anImage isKindOf: Image)
		ifFalse: [^self errorCanNotWrite].
	(anImage bitsPerPixel = 8 or: [anImage bitsPerPixel = 24])
		ifTrue: [imageObject := anImage]
		ifFalse: [anImage bitsPerPixel > 8
				ifTrue: [imageObject := anImage convertToPalette: (FixedPalette
									redShift: 16
									redMask: 255
									greenShift: 8
									greenMask: 255
									blueShift: 0
									blueMask: 255)]
				ifFalse: [Cursor wait showWhile: [imageObject := anImage convertToPalette: self class colorPalette256 renderedBy: ErrorDiffusion new]]].
	self writeBitmapFileHeader.
	self writeBitmapInfoHeader.
	self writeImagePalette.
	self writeImageData.
	bfSize := self position.
	^anImage
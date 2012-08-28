accessing
nextImage
	| bits depth image |
	self readHeader isNil ifTrue: [^nil].
	bits := self readBitData.
	depth := bitsPerPixel > 8
				ifTrue: [^self error: 'unexpected bits per pixel']
				ifFalse: [bitsPerPixel = 1
						ifTrue: [1]
						ifFalse: [bitsPerPixel = 2
								ifTrue: [2]
								ifFalse: [bitsPerPixel <= 4
										ifTrue: [4]
										ifFalse: [8]]]].
	depth < 8 ifTrue: [bits := self
					packBits: bits
					depthFrom8To: depth
					width: width
					height: height
					pad: 8].
	image := Image
				extent: width @ height
				depth: depth
				palette: colorPalette
				bits: bits
				pad: 8.
	transparentPixel notNil ifTrue: [image := OpaqueImage figure: image shape: (CachedImage on: (self convertToCoverageWithTransparentPixel: transparentPixel with: image) asRetainedMedium)].
	^image
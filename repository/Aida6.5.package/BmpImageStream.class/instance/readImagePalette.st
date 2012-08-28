decoding
readImagePalette
	imagePalette := nil.
	biBitCount = 24 ifTrue: [imagePalette := self readDepth24Palette].
	biBitCount = 8 ifTrue: [imagePalette := self readDepth8Palette].
	biBitCount = 1 ifTrue: [imagePalette := self readDepth1Palette].
	imagePalette isNil ifTrue: [^self errorCanNotRead]
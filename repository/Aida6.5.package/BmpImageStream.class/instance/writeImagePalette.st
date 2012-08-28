encoding
writeImagePalette
	imagePalette := nil.
	biBitCount = 24 ifTrue: [imagePalette := self writeDepth24Palette].
	biBitCount = 8 ifTrue: [imagePalette := self writeDepth8Palette].
	imagePalette isNil ifTrue: [^self errorCanNotWrite]
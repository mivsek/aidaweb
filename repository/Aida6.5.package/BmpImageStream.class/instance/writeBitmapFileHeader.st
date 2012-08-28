encoding
writeBitmapFileHeader
	bfType := ($B asInteger bitShift: 8)
				+ $M asInteger.
	bfSize := 0.
	bfReserved1 := 0.
	bfReserved2 := 0.
	bfOffBits := nil.
	imageObject bitsPerPixel = 8 ifTrue: [bfOffBits := 54 + (imageObject palette size * 4)].
	imageObject bitsPerPixel = 24 ifTrue: [bfOffBits := 54].
	bfOffBits isNil ifTrue: [^self errorCanNotWrite].
	self nextWordPut: bfType.
	self nextLSBLongPut: bfSize.
	self nextLSBWordPut: bfReserved1.
	self nextLSBWordPut: bfReserved2.
	self nextLSBLongPut: bfOffBits
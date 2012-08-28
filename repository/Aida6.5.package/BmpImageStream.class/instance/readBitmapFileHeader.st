decoding
readBitmapFileHeader
	| position |
	position := self position.
	(self hasMagicNumber: 'BM' asByteArray)
		ifFalse: [^self errorCanNotRead].
	self position: position.
	bfType := self nextWord.
	bfSize := self nextLSBLong.
	bfReserved1 := self nextLSBWord.
	bfReserved2 := self nextLSBWord.
	bfOffBits := self nextLSBLong
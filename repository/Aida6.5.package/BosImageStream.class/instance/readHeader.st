decoding
readHeader
	(self hasMagicNumber: 'BosImage' asByteArray)
		ifFalse: [^self errorCanNotRead]
encoding
writeImageData
	biCompression = 0 ifFalse: [^self errorCanNotWrite].
	biBitCount = 24 ifTrue: [^self writeDepth24Data].
	biBitCount = 8 ifTrue: [^self writeDepth8Data].
	^self errorCanNotWrite
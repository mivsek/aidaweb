decoding
readImageData
	biCompression = 0 ifFalse: [^self errorCanNotRead].
	imageObject := nil.
	biBitCount = 24 ifTrue: [imageObject := self readDepth24Data].
	biBitCount = 8 ifTrue: [imageObject := self readDepth8Data].
	biBitCount = 1 ifTrue: [imageObject := self readDepth1Data].
	imageObject isNil ifTrue: [^self errorCanNotRead].
	^imageObject
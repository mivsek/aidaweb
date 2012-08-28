accessing
imageKindTable
	"ImageStream imageKindTable."

	ImageKindTable isNil
		ifTrue: 
			[| aDictionary |
			aDictionary := Dictionary new.
			aDictionary at: 'bos' put: #BosImageStream.
			aDictionary at: 'boss' put: #BosImageStream.
			aDictionary at: 'bmp' put: #BmpImageStream.
			aDictionary at: 'bmpf' put: #BmpImageStream.
			aDictionary at: 'gif' put: #GifImageStream.
			aDictionary at: 'giff' put: #GifImageStream.
			aDictionary at: 'jpg' put: #JpegImageStream.
			aDictionary at: 'jpeg' put: #JpegImageStream.
			aDictionary at: 'pic' put: #PictImageStream.
			aDictionary at: 'pict' put: #PictImageStream.
			ImageKindTable := aDictionary].
	^ImageKindTable
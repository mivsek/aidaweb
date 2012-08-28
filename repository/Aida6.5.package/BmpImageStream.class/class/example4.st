examples
example4
	"BmpImageStream example4."

	| filename stream image |
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename readStream.
	[Cursor read
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
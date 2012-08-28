examples
example2
	"BmpImageStream example2."

	| filename stream image |
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename readStream.
	[Cursor read showWhile: [image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
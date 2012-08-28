examples
example2
	"BosImageStream example2."

	| filename stream image |
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename readStream.
	[Cursor read showWhile: [image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
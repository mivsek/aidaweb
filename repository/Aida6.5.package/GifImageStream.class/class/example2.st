examples
example2
	"GifImageStream example2."

	| filename stream image |
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename readStream.
	[Cursor read showWhile: [image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
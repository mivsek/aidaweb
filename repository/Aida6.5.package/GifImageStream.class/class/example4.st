examples
example4
	"GifImageStream example4."

	| filename stream image |
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename readStream.
	[Cursor read
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
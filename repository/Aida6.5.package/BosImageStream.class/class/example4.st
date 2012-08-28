examples
example4
	"BosImageStream example4."

	| filename stream image |
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename readStream.
	[Cursor read
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			image := stream nextImage]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
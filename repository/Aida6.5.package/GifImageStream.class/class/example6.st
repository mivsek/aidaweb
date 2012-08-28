examples
example6
	"GifImageStream example6."

	| filename stream image progress |
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename readStream.
	[Cursor read
		showWhile: 
			[progress := Progress new.
			stream compute: [:value | progress value: value].
			progress message: 'reading gif...'.
			progress do: [image := stream nextImage]]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
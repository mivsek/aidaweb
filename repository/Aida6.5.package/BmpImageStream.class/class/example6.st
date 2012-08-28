examples
example6
	"BmpImageStream example6."

	| filename stream progress image |
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename readStream.
	[Cursor read
		showWhile: 
			[progress := Progress new.
			stream compute: [:value | progress value: value].
			progress message: 'reading bmp...'.
			progress do: [image := stream nextImage]]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
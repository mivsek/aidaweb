examples
example6
	"BosImageStream example6."

	| filename stream image progress |
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename readStream.
	[Cursor read
		showWhile: 
			[progress := Progress new.
			stream compute: [:value | progress value: value].
			progress message: 'reading bos...'.
			progress do: [image := stream nextImage]]]
		valueNowOrOnUnwindDo: [stream close].
	stream show: image.
	^image
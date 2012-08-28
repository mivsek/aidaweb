examples
example5
	"BmpImageStream example5."

	| image filename stream progress |
	image := Image fromUser.
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[progress := Progress new.
			stream compute: [:value | progress value: value].
			progress message: 'writing bmp...'.
			progress do: [stream nextPutImage: image]]]
		valueNowOrOnUnwindDo: [stream close].
	^image
examples
example5
	"BosImageStream example5."

	| image filename stream progress |
	image := Image fromUser.
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[progress := Progress new.
			stream compute: [:value | progress value: value].
			progress message: 'writing bos...'.
			progress do: [stream nextPutImage: image]]]
		valueNowOrOnUnwindDo: [stream close].
	^image
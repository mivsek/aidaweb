examples
example5
	"GifImageStream example5."

	| image filename stream progress |
	image := Image fromUser.
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[progress := Progress new.
			stream compute: [:value | progress value: value].
			progress message: 'writing gif...'.
			progress do: [stream nextPutImage: image]]]
		valueNowOrOnUnwindDo: [stream close].
	^image
examples
example3
	"BosImageStream example3."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image
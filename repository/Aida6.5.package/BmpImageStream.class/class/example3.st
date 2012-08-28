examples
example3
	"BmpImageStream example3."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image
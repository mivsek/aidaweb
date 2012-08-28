examples
example3
	"GifImageStream example3."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename writeStream.
	[Cursor write
		showWhile: 
			[stream compute: [:value | Transcript cr; show: value printString].
			stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image
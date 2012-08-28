examples
example1
	"BmpImageStream example1."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.bmp' asFilename.
	stream := BmpImageStream on: filename writeStream.
	[Cursor write showWhile: [stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image
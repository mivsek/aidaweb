examples
example1
	"BosImageStream example1."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.bos' asFilename.
	stream := BosImageStream on: filename writeStream.
	[Cursor write showWhile: [stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image
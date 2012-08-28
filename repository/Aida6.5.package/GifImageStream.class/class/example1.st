examples
example1
	"GifImageStream example1."

	| image filename stream |
	image := Image fromUser.
	filename := 'zzz.gif' asFilename.
	stream := GifImageStream on: filename writeStream.
	[Cursor write showWhile: [stream nextPutImage: image]]
		valueNowOrOnUnwindDo: [stream close].
	^image
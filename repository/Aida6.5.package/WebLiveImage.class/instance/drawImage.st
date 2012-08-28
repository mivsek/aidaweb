drawing
drawImage
	"it paints a drawing with a painter and convert it to GIF"
	| pixmap graphicsContext image stream |
	pixmap := Pixmap extent: self width @ self height.
	graphicsContext := pixmap graphicsContext.
	self painter displayOn: graphicsContext.
	image := pixmap asImage.
	stream := GifImageStream on: ByteArray new writeStream.
	[stream nextPutImage: image. self gif: stream contents] 
		valueNowOrOnUnwindDo: [stream close].
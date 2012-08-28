encoding
writeBitmapInfoHeader
	biSize := 40.
	biWidth := imageObject width.
	biHeight := imageObject height.
	biPlanes := 1.
	biBitCount := imageObject bitsPerPixel.
	biCompression := 0.
	biSizeImage := 0.
	biXPelsPerMeter := 0.
	biYPelsPerMeter := 0.
	biClrUsed := 0.
	imageObject bitsPerPixel = 8 ifTrue: [biClrUsed := (imageObject palette size)].
	biClrImportant := 0.
	self nextLSBLongPut: biSize.
	self nextLSBLongPut: biWidth.
	self nextLSBLongPut: biHeight.
	self nextLSBWordPut: biPlanes.
	self nextLSBWordPut: biBitCount.
	self nextLSBLongPut: biCompression.
	self nextLSBLongPut: biSizeImage.
	self nextLSBLongPut: biXPelsPerMeter.
	self nextLSBLongPut: biYPelsPerMeter.
	self nextLSBLongPut: biClrUsed.
	self nextLSBLongPut: biClrImportant
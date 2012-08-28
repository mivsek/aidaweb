decoding
readBitmapInfoHeader
	biSize := self nextLSBLong.
	biWidth := self nextLSBLong.
	biHeight := self nextLSBLong.
	biPlanes := self nextLSBWord.
	biBitCount := self nextLSBWord.
	biCompression := self nextLSBLong.
	biSizeImage := self nextLSBLong.
	biXPelsPerMeter := self nextLSBLong.
	biYPelsPerMeter := self nextLSBLong.
	biClrUsed := self nextLSBLong.
	biClrImportant := self nextLSBLong
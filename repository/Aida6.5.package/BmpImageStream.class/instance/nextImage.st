accessing
nextImage
	self readBitmapFileHeader.
	self readBitmapInfoHeader.
	self readImagePalette.
	self readImageData.
	^imageObject
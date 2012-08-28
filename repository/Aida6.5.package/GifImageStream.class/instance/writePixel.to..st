decoding
writePixel: pixel to: bits 
	bits at: ypos * rowByteSize + xpos + 1 put: pixel.
	self updatePixelPosition
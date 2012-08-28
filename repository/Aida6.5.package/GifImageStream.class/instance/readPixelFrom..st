encoding
readPixelFrom: bits
	| pixel |
	ypos >= height ifTrue: [^nil].
	pixel := bits at: (ypos * rowByteSize + xpos + 1).
	self updatePixelPosition.
	^pixel
decoding
readDepth8Palette
	| size colors rgb color |
	size := 1 bitShift: biBitCount.
	biClrUsed = 0 ifFalse: [size := biClrUsed].
	colors := Array new: size.
	1 to: size
		do: 
			[:index | 
			rgb := self next + (self next bitShift: 8) + (self next bitShift: 16).
			self next.
			color := self colorValueFrom: rgb.
			colors at: index put: color].
	^MappedPalette withColors: colors
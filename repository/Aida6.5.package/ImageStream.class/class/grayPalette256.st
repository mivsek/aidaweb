constants of palette
grayPalette256
	"ImageStream grayPalette256."

	| paletteSize anArray |
	GrayPalette256 notNil ifTrue: [^GrayPalette256].
	paletteSize := 256.
	anArray := Array new: paletteSize.
	1 to: paletteSize
		do: 
			[:index | 
			| color |
			color := ColorValue brightness: 1 - (index - 1 / (paletteSize - 1)).
			anArray at: index put: color].
	GrayPalette256 := MappedPalette withColors: anArray reverse.
	^GrayPalette256
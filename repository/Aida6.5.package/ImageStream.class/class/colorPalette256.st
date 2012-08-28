constants of palette
colorPalette256
	"ImageStream colorPalette256."

	| anArray |
	ColorPalette256 notNil ifTrue: [^ColorPalette256].
	anArray := self colorPalette256Array
				collect: 
					[:array | 
					| r g b color |
					r := array at: 1.
					g := array at: 2.
					b := array at: 3.
					ColorValue scalingValue = 8191
						ifTrue: [color := ColorValue
										scaledRed: r
										scaledGreen: g
										scaledBlue: b]
						ifFalse: 
							[r := r / 8191.
							g := g / 8191.
							b := b / 8191.
							color := ColorValue
										red: r
										green: g
										blue: b].
					color yourself].
	ColorPalette256 := MappedPalette withColors: anArray reverse.
	^ColorPalette256
private
convertToCoverageWithTransparentPixel: pixelValue with: anImage 
	| image row |
	image := Image
				extent: anImage extent
				depth: 1
				palette: CoveragePalette monoMaskPalette.
	0 to: anImage height - 1
		do: 
			[:i | 
			row := anImage rowAt: i.
			row := row collect: [:p | p = pixelValue
							ifTrue: [0]
							ifFalse: [1]].
			image rowAt: i putAll: row].
	^image
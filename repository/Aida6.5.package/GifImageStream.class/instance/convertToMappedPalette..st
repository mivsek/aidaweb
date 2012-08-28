private
convertToMappedPalette: coveragePalette 
	coveragePalette size = 2 ifTrue: [^MappedPalette whiteBlack].
	^MappedPalette withColors: (coveragePalette collect: [:coverage | self convertToGray: coverage])
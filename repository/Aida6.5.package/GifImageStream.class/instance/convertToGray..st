private
convertToGray: coverageValue 
	coverageValue = CoverageValue transparent ifTrue: [^ColorValue white].
	coverageValue = CoverageValue opaque ifTrue: [^ColorValue black].
	^ColorValue brightness: coverageValue coverage
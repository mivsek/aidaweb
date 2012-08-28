views-graphs
graphLineCount: firstCount and: secondCount max: maxCount
	| e width maxLength |
	width := 6. maxLength := 148.
	e := WebElement new.
	e addGif: #redPixelGif size: ((maxLength * firstCount // (maxCount max: 1)) max: 2)@width.
	(secondCount notNil and: [secondCount > 0]) ifTrue:
		[e addGif: #bluePixelGif size: ((maxLength * secondCount // maxCount) max: 2)@width].
	^e
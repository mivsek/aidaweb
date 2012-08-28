views-elements
referersElementFor: aCollection date: aDate
	| e referers nr max new |
	e := WebElement new.
	e table width: self pageWidth; cellSpacing: 0; cellPadding: 0.
	referers := aCollection copyFrom: 1 to: (self refererLinesOnPage min: aCollection size).
	max := referers inject: 0 into: [:maxi :each | maxi max: (each at: 2)].
	nr := 1.
	referers do: [:array |
		new := aDate notNil and: [self observee isNewReferer: (array first) onDate: aDate].
		e cell align: #right; addTextSmall: nr printString, '. '.
		e newCell add: 
			(WebLink new 
				text: '<font size=-1>', (new ifTrue: ['<b>'] ifFalse: ['']), (array first), '</b></font>';
				urlReference: (array first)).
		e newCell add: (self graphLineCount: (array at: 2) max: max "length: 80").
		e newCell align: #right; addTextSmall: ' ', (array at: 2) printDotString. 	e newRow.
		nr even ifTrue: [e row color: #fffbf0].
		nr := nr + 1].
	e cell colspan: 4; addRulerSize: 1.
	^e
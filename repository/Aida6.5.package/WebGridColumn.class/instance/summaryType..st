settings
summaryType: aSymbolOrString
	"see comment in method #summary"
	summaryType := aSymbolOrString.
	(aSymbolOrString = #count) | (aSymbolOrString = #sum)
		ifTrue: [self summary: 0]
		ifFalse: [self summary: aSymbolOrString].
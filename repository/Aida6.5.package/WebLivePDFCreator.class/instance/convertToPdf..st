converting
convertToPdf: aHtmlString
	| fname pdfname stream |
	fname := (AIDASite random new next * 1000) truncated printString, '.html'.
	pdfname := (AIDASite random new next * 1000) truncated printString, '.pdf'.
	[stream := (SpFilename named: fname) writeStream. stream nextPutAll: aHtmlString] 
		ensure: [stream close].
	OSProcess exec: 'htmldoc --batch htmldoc.book --outfile ', pdfname, ' ', fname.
	(SpFilename named: fname) delete.
	[stream := (SpFilename named: pdfname) readStream binary. ^stream contents] 
		ensure: [stream close. (SpFilename named: pdfname) delete].
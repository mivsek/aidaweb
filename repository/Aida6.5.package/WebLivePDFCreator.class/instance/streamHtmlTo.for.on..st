private-streaming
streamHtmlTo: aStream for: aRequest on: aSession
	| html pdf |
	html := AIDASite convert: (self object perform: self method) toCodepage: #'iso-8859-2'.
	pdf := self convertToPdf: html.
	aStream nextPutAll:  pdf asByteString.
private
streamHtmlTo: aStream for: aRequest on: aSession 
	| link |
	self prepareToHtmlStreamingOn: aSession.
	aStream nextPutAll: self ident , '<map'.
	self streamAttributesTo: aStream for: aSession.
	aStream nextPutAll: '"> ' , self eol.
	self areas do: 
			[:area | 
			aStream
				nextPutAll: self identMore , '<area shape="';
				nextPutAll: (area at: 1) asString;
				nextPutAll: '" coords="'.
			1 to: (area at: 2) size
				do: 
					[:inx | 
					inx > 1 ifTrue: [aStream nextPutAll: ','].
					aStream nextPutAll: ((area at: 2) at: inx) printString].
			link := area at: 3.
			link prepareAttributesToStreamOn: aSession.
			link streamAttributesTo: aStream for: aSession.
			aStream nextPutAll: '"> ' , self eol].
	aStream nextPutAll: self ident , '</map>' , self eol
codepage converting
convert: aString toCodepage: aSymbol
	"convert internal unicode aString to codepage. "
	| encoding converter in out |
	(#(#'win-1250' #'win1250' #'Windows-1250' cp1250) includes: aSymbol) 
		ifTrue: [encoding := #'cp-1250'].
	(#(#'iso-8859-2' #'iso8859-2' #'ISO-8859-2' iso2) includes: aSymbol) 
		ifTrue: [encoding := #'iso-8859-2'].
	(#(#utf8 #'utf-8' #'utf_8' #UTF8 #'UTF-8' #'UTF_8') includes: aSymbol) 
		ifTrue: [encoding := #'utf8'].
	encoding isNil ifTrue: [^aString].

	converter := (TextConverter newForEncoding: encoding) ifNil: [UTF8TextConverter new].
	in := aString readStream.
	out := WriteStream on: ''.
	[in atEnd] whileFalse: [converter nextPut: in next toStream: out].
	^out contents

"AIDASite convert: (String with: 16r010D asCharacter) toCodepage: #utf8 "
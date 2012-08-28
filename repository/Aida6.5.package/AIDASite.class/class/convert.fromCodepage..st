codepage converting
convert: aString fromCodepage: aSymbol
	"convert aString to internal unicode"
	| encoding |
	(#(#'win-1250' #'win1250' #'Windows-1250' cp1250) includes: aSymbol) 
		ifTrue: [encoding := #'cp-1250'].
	(#(#'iso-8859-2' #'iso8859-2' #'ISO-8859-2' iso2) includes: aSymbol) 
		ifTrue: [encoding := #'iso-8859-2'].
	(#(#utf8 #'utf-8' #'utf_8' #UTF8 #'UTF-8' #'UTF_8') includes: aSymbol) 
		ifTrue: [encoding := #utf8].
	encoding isNil ifTrue: [^aString].

	^[aString convertFromEncoding: encoding] on: Error do: [:ex | aString ].

	
"AIDASite convert: (String with: 16rC4 asCharacter with: 16r8D asCharacter) fromCodepage: #utf8 "
http encoding
convertFromWebString: aString
	"converts special chars in http stream: 
		'+' as ' '
		%xx as appropriate ASCII char
	"
	| newString |
	newString := HTTPString decodedHTTPFrom: aString.
	newString := AIDASite convert:newString fromCodepage: #'utf-8'.
	^newString

"AIDASite convertFromWebString: (AIDASite convertToWebString: '+-% test one') "
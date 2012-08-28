*Aida
withHtmlBreaks
	"changes all cr with <br>"
	^self copyReplaceAll: (String with: Character cr) with: '<br>'

"('aaa', (String with: Character cr), 'bbb') withHtmlBreaks"
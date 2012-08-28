private
textOptions
	"Scriptaculous specific"
	| text |
	text := ', okText:''', self okText, ''', cancelText:''', self cancelText, ''', savingText:''', self savingText, ''''.
	^AIDASite convertToWeb: text on: self app session
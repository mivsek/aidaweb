settings
supportedLanguages: aSetOfLangCodes
	"Which languages are supported on this site. Content may be in all those languages. 
	Default language is always among supported."
	^self settings at: #supportedLanguages put: aSetOfLangCodes asSet
settings
supportedLanguages
	"Which languages are supported on this site. Content may be in all those languages. 
	Default language is always among supported."
	^(self settings at: #supportedLanguages ifAbsent: [Set new])
		add: self defaultLanguage; yourself
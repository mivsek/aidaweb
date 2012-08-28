locale support
originatorLanguageFrom: aRequest
	"find a language from a web request"
	| defaultLang header |
	defaultLang := self site defaultLanguage.
	header := aRequest headerAt: 'Accept-Language' ifAbsent:[^defaultLang].
	header values isEmpty ifFalse: [^(header values at: 1) asSymbol].
	^defaultLang
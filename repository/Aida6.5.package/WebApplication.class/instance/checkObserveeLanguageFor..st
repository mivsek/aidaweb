private-multilingual
checkObserveeLanguageFor: aRequest
	"change observee to point to domain object in right language if necessary 
	(from session language or explicit language request in query part of Url)"
	| language new |
	(self isLanguageRequest: aRequest) "language= in query part of url"
		ifTrue: [self session language: (aRequest queryAt: 'language') asSymbol].
	language := self session language.
	new := self observee forLanguage: language.
	new notNil ifTrue: [self observee: new]
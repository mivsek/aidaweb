translating
dictToTranslate: aMultilangAssociation to: aLanguageCode for: anElement on: aSession
	"returns WebTranslDict, for setting an aspect to edit by translation tools"
	"Open a new one automatically if not yet exist for that method and language"
	| translClass method dict |
	translClass := aSession lastApp class. "app class where translations reside"
	method := anElement creationMethod. "method which created an element with multilang text"
	dict := ((self cache at: translClass ifAbsent: [self refreshClass: translClass])
		at: method ifAbsent: 
			[self openDictsToTranslate: aMultilangAssociation 
				toLanguage: aLanguageCode forMethod: method on: translClass.
			self refreshClass: translClass.
			(self cache at: translClass) at: method])
				at: aLanguageCode ifAbsent: 
					[self openDictsToTranslate: aMultilangAssociation 
						toLanguage: aLanguageCode forMethod: method on: translClass.
						self refreshClass: translClass.
						((self cache at: translClass) at: method) at: aLanguageCode].
	self checkCreateTranslation: aMultilangAssociation forLanguage: aLanguageCode inDict: dict.
	^dict
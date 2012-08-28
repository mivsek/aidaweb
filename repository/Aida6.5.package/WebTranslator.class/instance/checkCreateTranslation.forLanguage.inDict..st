private-classes-changes
checkCreateTranslation: aMultilangAssociation forLanguage: aLanguageCode inDict: aTranslDict
	"check if that translation exists and if not, create a pair in a dict. Same for original lang too!"
	| origLang origDict |
	(aTranslDict at: aMultilangAssociation value ifAbsent: [nil]) notNil ifTrue: [^true]. "exists, no need to create"
	aTranslDict  
		at:  aMultilangAssociation value
		put:  aMultilangAssociation value. "default text is from orig lang"
	origLang := aMultilangAssociation key.
	origDict := ((self cache at: aTranslDict translClass) at: aTranslDict method) at: origLang.
	self checkCreateTranslation: aMultilangAssociation forLanguage: origLang inDict: origDict.
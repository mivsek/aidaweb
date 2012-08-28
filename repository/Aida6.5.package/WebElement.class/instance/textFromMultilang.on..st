private-translation
textFromMultilang: aStringOrAssociation on: aSession
	"translate the multilang text in form #fr->'Bonjour' "
	^aSession site translator 
		translate: aStringOrAssociation
		to: aSession languageBasic
		for: self
		on: aSession
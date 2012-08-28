private-classes
langsForMethod: aMethodSymbol on: aClassWithTransl
	"get all languages for which we have a translation for that creation method"
	^((self translMethodsOn: aClassWithTransl)
		 select: [:each | (self methodFromTranslMethod: each) = aMethodSymbol]) 
			collect: [:each | self langFromTranslMethod: each]
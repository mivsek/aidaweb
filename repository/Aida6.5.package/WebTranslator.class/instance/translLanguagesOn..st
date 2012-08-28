private-classes
translLanguagesOn: aClassWithTransl
	"get all languages (codes) in which we have trnaslations"
	^(self translMethodsOn: aClassWithTransl) 
		inject: Set new 
		into: [:each :set | set add: (self langFromTranslMethod: each); yourself]
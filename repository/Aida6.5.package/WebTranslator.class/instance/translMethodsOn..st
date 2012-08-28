private-classes
translMethodsOn: aClassWithTransl
	"get all class method names holding translations"
	"VW specific"
	^aClassWithTransl class organization listAtCategoryNamed: self translationsCategory
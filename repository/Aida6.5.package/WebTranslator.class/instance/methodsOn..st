private-classes
methodsOn: aClassWithTransl
	"get all creation methods for elements holding multilang text"
	^((self translMethodsOn: aClassWithTransl) collect: [:each | self methodFromTranslMethod: each]) 
		asSet "to find a unique set of those methods"
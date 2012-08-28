accessing
asPerson
	"parallel Person object (from Party framework if present, otherwise nil)"
	^self otherAt: #Person ifAbsent: [^self initPerson]
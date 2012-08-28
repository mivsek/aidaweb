accessing
text: aStringOrAssociation
	"set the text to be shown in a button, It is actually a value attribute in input tag"
	| txt |
	"slovene csz are converted if char ^ is after such a char"
	txt := (aStringOrAssociation aidaIsAssociation not and: [aStringOrAssociation includes: $^ ]) 
		ifTrue: [aStringOrAssociation convertToSloveneChars] 
		ifFalse: [aStringOrAssociation].
	self attributesAt: #value put: txt. "txt can be a multilingual association"
	self addText: txt
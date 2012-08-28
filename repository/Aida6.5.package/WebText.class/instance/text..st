accessing
text: aStringOrAssociation
	"if text is association in format #lang->text, then this is a multilingual text"
	self basicText: (WebFormElement 
		autoConvertToString: aStringOrAssociation).  "in case the argument  is not string but date, number  etc."
	"Slovenian csz are converted if char ^ is after such a char"
	(self text aidaIsAssociation not and: [self text includes: $^ ]) 
		ifTrue: [self basicText: self text convertToSloveneChars].
system services
translator
	"translation support for Apps"
	^self systemServices 
		at: #Translator
		ifAbsent: [self addSystemService: (WebTranslator newOn: self) named: #Translator].
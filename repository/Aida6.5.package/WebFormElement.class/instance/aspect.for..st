model adapting
aspect: aSymbolOrNumber for: anObject
	"set the link between this form element and an aspect (name of instance variable) 
	of an object , which value is presented in this webFormElement. The appropriate 
	aspect adaptor is generated"
	self adaptor: 
		(self adapterFor: anObject aspect: aSymbolOrNumber)
instance creation
newOn: aWebTranslator forClass: aWebAppClass method: aSymbol language: aLangSymbol
	^super new
		translator: aWebTranslator;
		translClass: aWebAppClass;
		method: aSymbol;
		language: aLangSymbol
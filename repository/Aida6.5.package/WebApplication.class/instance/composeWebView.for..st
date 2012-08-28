private-composing
composeWebView: aViewSymbol for: aRequest
 	"build a web page for that view"
	| method page form |
	aRequest context page clear; clearAttributesExceptId; setRandomId;
		initPageHeaderLinks; initPageScripts; checkBrowserSupport.
	aRequest context form initFields.
	method := self class viewMethodForView: aViewSymbol. 
	method isNil ifTrue: [^WebElement new addTextH3: 'ERROR: view named ', aViewSymbol printString, ' does not exist'; yourself].
	^(self viewAllowed: aViewSymbol)
		ifTrue: [page := self perform: method. "like #viewMain etc. "
			page isWebApplication ifTrue: 
				[form := aRequest context form.
				self session inTranslationMode ifTrue: [form prepareForTranslation]. "in-line edit"
				aRequest context window registerFormElements]. "must be after above transl.preparation!"
			self storeThisUrl.
			self announceView: aViewSymbol.
			self activateView: aViewSymbol. "page is now shown/active on user browser"
			page]
		ifFalse: [self redirectTo: self site admin view: #login.
			WebPage new].
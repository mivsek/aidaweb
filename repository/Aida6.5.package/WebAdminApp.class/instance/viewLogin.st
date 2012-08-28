views
viewLogin
	| e l |
	self preloginCheck ifFalse: [^self viewLoginSecondary].  "if some error etc."
	self title: self style loginTitle.
	e := WebElement new.
"	e scriptBefore: 'Element.hide(''', self searchButton id, ''')'." "remove search button on navbar!"
	e addText: self style loginWelcomeMessage. 
	l := (WebFieldSet newId: #login) legend: #en->'Login'.
	self inError ifTrue: 
		[l cell colspan: 2; addText: self style loginErrorText. self showError: nil.
		l newRow. l cell addNbSp. l newRow].
	l cell addText: #en->'Username: '. 
	l newCell add: (WebInputField new aspect: #username for: self;
		focus). "let text cursor be there at the start! "
	l newRow. l cell addText: #en->'Password: '. 
	l newCell add: (WebInputField new type: #password; aspect: #password for: self).
	l newRow. l newCell addButtonText: #en->'Login'.
	e add: l.
	e addText: self style loginBelowMessage.
" 
	e newRow. e newCell addGif: #bulletSquareLeftWhiteGif ; 
		addLinkTo: self observee text: ' Forgot your password ?' view: 'forgoten'.
	e newRow. e newCell addGif: #bulletSquareLeftWhiteGif ; 
		addLinkTo: self observee text: ' New user ?' view: 'registration'.
"
 	^self style pageFrameWith: e title: self title .
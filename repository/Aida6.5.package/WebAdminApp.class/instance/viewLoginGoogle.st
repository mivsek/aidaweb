views-federated login
viewLoginGoogle
	"Google federated login with OpenID"
	| e l |
	self preloginCheck ifFalse: [^self viewLoginSecondary].  "if some error etc."
	self title: self style loginTitle.
	e := WebElement new.
	e addText: self style loginWelcomeMessage. 
	l := (WebFieldSet newId: #login) legend: #en->'Click to Login with Google Account'.
	self inError ifTrue: 
		[l cell colspan: 2; addText: self style loginErrorText. self showError: nil.
		l newRow. l cell addNbSp. l newRow].
	(l addLinkTo: self observee text: '' view: #loginGoogle2)
		add: (WebImage image: self site federatedAuthenticator providerGoogle imgUrl)
		yourself.
	e add: l.
	e addText: self style loginBelowMessage.
" 
	e newRow. e newCell addGif: #bulletSquareLeftWhiteGif ; 
		addLinkTo: self observee text: ' Forgot your password ?' view: 'forgoten'.
	e newRow. e newCell addGif: #bulletSquareLeftWhiteGif ; 
		addLinkTo: self observee text: ' New user ?' view: 'registration'.
"
 	^self style pageFrameWith: e title: self title .
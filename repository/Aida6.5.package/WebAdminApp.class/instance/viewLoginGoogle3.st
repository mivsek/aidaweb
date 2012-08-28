views-federated login
viewLoginGoogle3
	"Google federated login with OpenID"
	| authenticator success registration |
	authenticator := self site federatedAuthenticator.
	success := authenticator authenticateAndLoginFromProviderRedirect: self session lastRequest.
	success ifTrue: 
		[self reportLogin.
		^self redirectTo: '/']. "existing user was logged-in successfully"
	registration := WebRegistrationApp aidaWebAppFor: self session.
	authenticator fillUser: registration newUser fromProviderRedirect: self session lastRequest.
	self redirectTo: WebRegistrationApp view: #mainGoogle
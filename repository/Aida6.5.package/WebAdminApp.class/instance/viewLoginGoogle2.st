views-federated login
viewLoginGoogle2
	"Google federated login with OpenID"
	| authUrl |
	authUrl := self site federatedAuthenticator authenticationUrlForGoogle.
 	^self redirectTo: authUrl
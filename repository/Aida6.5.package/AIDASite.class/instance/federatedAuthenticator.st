system services
federatedAuthenticator
	"a federated plugable authentication (OpenID) of users during login. It can be used in 
	parallel with #authenticator"
	^self systemServices 
		at: #FederatedAuthenticator
		ifAbsent: [self setDefaultFederatedAuthenticator]. "OpenID"
settings
setDefaultFederatedAuthenticator
	"OpenID is a default federated authentificator"
	^self 
		addSystemService: (OpenIDAuthenticator newOn: self) 
		named: #FederatedAuthenticator
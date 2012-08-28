settings
setDefaultFederatedAuthorizator
	"OAuth is a default federated authorizator, accessible on /authorizator as well"
	| auth |
	auth := self 
		addSystemService: (OAuthAuthorizator newOn: self) 
		named: #FederatedAuthorizator.
	self register: auth onUrl: '/authorizator'.
	^auth
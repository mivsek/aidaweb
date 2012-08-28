system services
federatedAuthorizator
	"a federated plugable authorization support (OAuth)r"
	^self systemServices 
		at: #FederatedAuthorizator
		ifAbsent: [self setDefaultFederatedAuthorizator]. "OAuth, including in URLResolver on /authorizator"
authentication
authenticationScheme
	"#Form - with WebAdminApp login form - default!
	#HttpBasic - rfc2617 Basic authentication - passwords NOT encrypted!
	#HttpDigest - rfc2617 Digest authentication - encrypted passwords
	#SSLClientCertificate - most secure, user needs a valid PKI certificate"
	authenticationScheme isNil ifTrue: [self setFormAuthenticationScheme].
	^authenticationScheme
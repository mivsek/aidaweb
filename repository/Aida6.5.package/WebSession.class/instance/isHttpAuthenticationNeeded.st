testing
isHttpAuthenticationNeeded
	"Usually we authenticate by WebAdminApp logon form. But if site is configured for HTTP 	authentication (to open a separate username/password dialog window to user), and 
	a session is not yet logged in, this method will return true"
	^self isLoggedIn not and: [self site securityManager hasHttpAuthenticationScheme]
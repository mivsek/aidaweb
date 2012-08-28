private
authenticationScheme
	"#Basic or #Digest, see rfc2617. Digest is recomended because password
	goes encrypted to server"
	self securityManager hasHttpBasicAuthenticationScheme ifTrue: [^#Basic].
	self securityManager hasHttpDigestAuthenticationScheme ifTrue: [^#Digest].
	^#None
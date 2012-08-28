*Aida
aidaDemoSite
	"return aidademo site. Create and make it default, if it not yet there"
	| siteName |
	siteName := 'aidademo'.
	(self siteNamed: siteName) isNil ifTrue:
		[AIDASite newNamed: siteName.
		AIDASite default: siteName.
		(AIDASite named: siteName) host: '*' ip: '*'  port: 8888].
	^self siteNamed: siteName
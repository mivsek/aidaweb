accessing
default: aString
	"make a site with that name a default one"
	| site |
	site := SwazooServer singleton siteNamed: aString.
	site isNil ifTrue: [^self error: 'site with that name does not exist!'].
	Default := site.
	^site
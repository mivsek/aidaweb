ensure
ensure: aRelativeResourceUrl onPage: aWebPage
	"JS and CSS resources supported so far"
	| absUrl headerValue |
	(self urlToMethodMap includesKey: aRelativeResourceUrl) ifFalse: 
		[self error: 'Resource with this Url does not exist, probably version part incorrect?'].
	absUrl := self baseUrl, aRelativeResourceUrl.
	'text/javascript' = (self urlToMethodMap at: aRelativeResourceUrl) last ifTrue:
		[headerValue := ' src="', absUrl, '" language="JavaScript" type="text/javascript"'.
		(aWebPage headers contains: [:each | each key = 'script' and: [each value = headerValue] ]) ifFalse: 
			[aWebPage addHeader: 'script' value: headerValue].].
	'text/css' = (self urlToMethodMap at: aRelativeResourceUrl) last ifTrue:
		[(aWebPage headers contains: [:each | each key = 'link' and: [ absUrl match: each value] ]) 
			ifFalse: 	[aWebPage addLinkToScreenStyleSheet: absUrl ] ].
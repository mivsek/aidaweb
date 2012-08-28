header elements
addLinkToAlternateScreenStyleSheet: anObjectOrUrl
	| url |
	url := anObjectOrUrl isString
		ifTrue: [anObjectOrUrl]
		ifFalse: [self site urlResolver halfUrlFor: anObjectOrUrl].
	self addHeader: 'link' value: 'rel="alternate stylesheet" type="text/css" media="screen" href="', url, '" '
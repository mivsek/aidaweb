header elements
addLinkToJavascript: anObjectOrUrl
	| url |
	url := anObjectOrUrl isString
		ifTrue: [anObjectOrUrl]
		ifFalse: [self site urlResolver halfUrlFor: anObjectOrUrl].
	self addScriptWithParms: ' src="', url, '" language="JavaScript" type="text/javascript"' script: ''.
private-obsolete
ajaxCallUrl
	"relative url of an app observee object. This url is used for AJAX calls back to the server"
	| app linkTarget |
	app := self app.
	linkTarget := app isStandaloneApp 
		ifTrue: [app class] 
		ifFalse: [app observee isVersionedObject 
			ifTrue: [app observee currentVersion] ifFalse: [app observee] ].
	^AIDASite 
		convert: ( app site urlResolver halfUrlFor: linkTarget) 
		toCodepage: #utf8
private-obsolete
ajaxCallUrlExtended
	"relative url of an app observee object. This url is used for AJAX calls back to the server"
	"also includes 'ajaxRequest' in query part, to distinguish ajax request from others"
	"Prototype specific"
	| viewParm versionParm |
	viewParm := 'view=', self context form view asString.
	versionParm := ''.
	(self app isStandaloneApp not and: [self app observee isVersionedObject]) ifTrue:
		[self app observee isCurrentVersion ifFalse: 
			[versionParm := 'version=', self app observee versionNumber, '&'] ].
	^self ajaxCallUrl, '?', viewParm, '&', versionParm, 'ajaxRequest'
private-obsolete
ajaxCallUrlParametersFor: anElement context: aContext
	"ajax url must have 'ajaxRequest' parm in query part! Deal also with versioned objects"
	"Prototype specific"
	| idSymbol viewParm versionParm contextParm |
	idSymbol := (anElement isNil
		ifTrue: [#nil] 
		ifFalse: [anElement ensureId. anElement id] ).
	viewParm := 'view=', aContext view asString.
	versionParm := ''.
	self app observee isVersionedObject ifTrue:
		[self app observee isCurrentVersion 
			ifFalse: [versionParm := 'version=', self app observee versionNumber, '&'] ].
	contextParm := WebContext contextIdName "aidaCtx", '=', aContext id printString.
	^viewParm, '&', 
		versionParm, 
		'ajaxRequest&ajaxGetElementId=', idSymbol asString,
		'&', contextParm
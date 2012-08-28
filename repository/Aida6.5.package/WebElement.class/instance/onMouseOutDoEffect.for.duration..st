events-effects&dragdrop
onMouseOutDoEffect: aSymbol for: anElementOrId duration: aNumber
	"Scriptaculous specific"
	| idSymbol |
	ScriptaculousLibrary ensureScriptaculous.
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId ensureId. anElementOrId id].
	self onMouseOut: 'new Effect.', aSymbol asString, '(''', idSymbol asString, ''', {duration: ', aNumber asString, '});'.
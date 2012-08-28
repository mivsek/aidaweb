events-effects&dragdrop
onMouseOverDoEffect: aSymbol for: anElementOrId duration: aNumber
	"Scriptaculous specific"
	| idSymbol |
	ScriptaculousLibrary ensureScriptaculous.
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId ensureId. anElementOrId id].
	self onMouseOver: 'new Effect.', aSymbol asString, '(''', idSymbol asString, ''', {duration: ', aNumber asString,'});'.
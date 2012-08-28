events-effects&dragdrop
onClickDoToggleEffect: aSymbol for: anElementOrId duration: aNumber
	"Scriptaculous specific"
	| idSymbol |
	ScriptaculousLibrary ensureScriptaculous.
	idSymbol := anElementOrId isSymbol 
		ifTrue: [anElementOrId] ifFalse: [anElementOrId ensureId. anElementOrId id].
	self onClick: 'new Effect.toggle(''', idSymbol asString, ''', ''', aSymbol asString, ''', {duration:', aNumber asString,'})'.
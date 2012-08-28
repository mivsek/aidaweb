private-events
scriptForEvent: anEventSymbol context: aWebContext
	"send if chekbox checked or not after event"
	^'aidaEvent(''', anEventSymbol asString, ''',''', 
		(self ensureId; id) asString, ''',''', 
		aWebContext id asString, ''',',
		'this.checked);'
private-events
scriptForEvent: anEventSymbol context: aWebContext
	^'aidaEvent(''', anEventSymbol asString, ''',''', 
		(self ensureId; id) asString, ''',''', 
		aWebContext id asString, ''')'
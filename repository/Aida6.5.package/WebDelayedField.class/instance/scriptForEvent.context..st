private
scriptForEvent: anEventSymbol context: aWebContext
	"send current value of this form element, but with delay after last event"
	^'aidaDelayedEvent(''', anEventSymbol asString, ''',''', 
		(self ensureId; id) asString, ''',''', 
		aWebContext id asString, ''',',
		'this.value,', (self delay*1000) printString, ');'

"	^'aidaEvent(''', anEventSymbol asString, ''',''', 
		(self ensureId; id) asString, ''',''', 
		aWebContext id asString, ''',',
		'this.value);'
"
private-events
scriptForEvent: anEventSymbol context: aWebContext
	"send current value of this form element too"
	"delay sending for few ms so that value will actuall be set"
	^'setTimeout(function() {aidaEvent(''', anEventSymbol asString, ''',''', 
		(self ensureId; id) asString, ''',''', 
		aWebContext id asString, ''',',
		'document.getElementById(''', self id asString, ''').value);}, 100);'
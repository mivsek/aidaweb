private-ajax
scriptForSubmitOnEvent: anEventSymbol context: aWebContext
	"send serialized form values as value"
	^'aidaEvent(''', anEventSymbol asString, ''',''', 
		(self ensureId; id) asString, ''',''', 
		aWebContext id asString, ''',',
		'aidaSerializeForm(''', self form id asString, '''))'
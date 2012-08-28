events
activate
	"move focus and select the text in that form field. (focus+select)"
	self ensureId.
	self scriptAfter: 'document.getElementById(''', self id, ''').activate' 
"	self scriptAfter: 'Field.activate(''', self id, ''')'"
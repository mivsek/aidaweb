events
focus
	"move the input focus to that form field"
	self ensureId.
	self scriptAfter: 'document.getElementById(''', self id, ''').focus()'
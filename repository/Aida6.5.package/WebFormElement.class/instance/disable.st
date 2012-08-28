events
disable
	"disable (gray out) this form element"
	self ensureId.
	self scriptAfter: 'document.getElementById(''', self id, ''').disabled = true'
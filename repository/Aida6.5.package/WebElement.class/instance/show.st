events
show
	"show me (if not already) on web page"
	self ensureId.
	self scriptAfter: 'document.getElementById(''', self id, ''').style.display=''block'' ' "is this good enough?"
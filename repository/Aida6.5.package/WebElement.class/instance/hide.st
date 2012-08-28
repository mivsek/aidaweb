events
hide
	"hide me from web page"
	self ensureId.
	self scriptAfter: 'document.getElementById(''', self id, ''').style.display=''none'' '
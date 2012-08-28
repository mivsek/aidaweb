events
onMouseOutHide: anElement
	"hide specified element when mouse get out of me"
	anElement ensureId.
	self onMouseOut: 'document.getElementById(''', anElement id, ''').style.display=''block'' '.
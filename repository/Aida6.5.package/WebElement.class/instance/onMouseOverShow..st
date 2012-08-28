events
onMouseOverShow: anElement
	"show specified element when mouse come over me"
	anElement ensureId.
	self onMouseOver: 'document.getElementById(''', anElement id, ''').style.display=''block'' '.
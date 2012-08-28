events
onMouseOverHide: anElement
	"hide specified element when mouse come over me"
	anElement ensureId.
	self onMouseOver: 'document.getElementById(''', anElement id, ''').style.display=''none'' '.
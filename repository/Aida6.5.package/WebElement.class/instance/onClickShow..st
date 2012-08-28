events
onClickShow: anElement
	"show specified element on mouse click on me"
	anElement ensureId.
	self onClick: 'document.getElementById(''', anElement id, ''').style.display=''block'' '.
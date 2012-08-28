events
onClickHide: anElement
	"hide specified element on mouse click on me"
	anElement ensureId.
	self onClick: 'document.getElementById(''', anElement id, ''').style.display=''none'' '.
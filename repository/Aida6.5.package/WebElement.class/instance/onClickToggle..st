events
onClickToggle: anElement
	"toggle visibility of specified element on mouse click on me"
	anElement ensureId.
	self onClick: 'var e = document.getElementById(''', anElement id, '''); if (e.style.display == ''none'') a = ''block''; else a = ''none''; e.style.display = a; '
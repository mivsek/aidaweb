events
ignoreEnterKey
	"don't allow ENTER/RETURN key to submit a form unintentionally, for instance"
	"Prototype specific"
	self scriptAfter: 'Event.observe(''', self id, ''', ''keypress'', function(event) {
  		if (event.keyCode == Event.KEY_RETURN) { Event.stop(event); } } )'
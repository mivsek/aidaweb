private
addEnterTabScriptIfNessesary
	"allow ENTER key to be used for tabulation, like a TAB"
	"Prototype specific"
	| next nextId |
	self enterTabForm isNil ifTrue: [^nil].
	next := self enterTabForm nextFieldTabOrderIn: self.
	nextId := next notNil 
		ifTrue: [next ensureId; id]
		ifFalse: [''].  "no tabulation, but also no default ENTER action!" 
	self scriptAfter: 'Event.observe(''', self id, ''', ''keypress'', function(event) {
  		if (event.keyCode == Event.KEY_RETURN) {  
			Event.stop(event); $(''', nextId, ''').activate(); } } )'
events
select
	"select a whole input. Be sure to focut it first!"
	self ensureId.
	self scriptAfter: 'document.getElementById(''', self id, ''').select' 
"	self scriptAfter: 'Field.select(''', self id, ''')' "
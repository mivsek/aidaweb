events
toogle
	"toogle element visibility on  web page"
	self ensureId.
	self scriptAfter: 
'var e = document.getElementById(''', self id, ''');
if (e.style.display == ''none'') a = ''block''; else a = ''none'';
e.style.display = a; ' 
"	self addText: '<script>Element.toggle(''', self id, ''')</script>'"
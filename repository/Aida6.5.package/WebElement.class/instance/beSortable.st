events-effects&dragdrop
beSortable
	"Scriptaculous specific"
	| script |
	self ensureId.
	ScriptaculousLibrary ensureScriptaculous.
	script := '// <![CDATA[ 
		Sortable.create("', self id asString,'",{'.
	(self isKindOf: WebList) ifFalse: [
		self setDiv.
		script := script,  'tag: "div", '].
	script := script, 'dropOnEmpty: true, constraint: false});
		// ]]>'.
	self scriptAfter: script
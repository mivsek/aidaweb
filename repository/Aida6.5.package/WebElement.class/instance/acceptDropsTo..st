events-effects&dragdrop
acceptDropsTo: aCollectionOfElements
	| script |
	"Scriptaculous specific"
	self ensureId.
	ScriptaculousLibrary ensureScriptaculous.
	script := '// <![CDATA[ 
		Sortable.create("', self id asString,'"'.
	(self isKindOf: WebList) ifFalse: [
		self setDiv.
		script := script,  'tag: "div", '].
	script := script, ',{dropOnEmpty: true,constraint: false, containment: ['.
	aCollectionOfElements do: [:each |
		each ensureId.
		script := script, each id, ','].
	script := script,']});
	// ]]>'.
	self parent scriptAfter: script
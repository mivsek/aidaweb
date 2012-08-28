events-effects&dragdrop
beDraggableAndRevert: aBoolean
	"Scriptaculous specific"
	self ensureId.
	ScriptaculousLibrary ensureScriptaculous.
	self scriptAfter: '// <![CDATA[ 
	new Draggable("', self id asString,'",{revert:', aBoolean asString, '});
	// ]]> 
	'